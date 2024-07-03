import express from "express";
import bodyparser from "body-parser";
import pg from "pg";

const app = express();
const port = 4000;

//---------------------- DB connection ----------------------//
const db = new pg.Client({
    user: 'postgres',
    host: 'localhost',
    database: 'apple',
    password: '12345',
    port: 5432
});
db.connect();

//---------------------- Select iPhone function ----------------------//
// Minimun price-list for each model
async function minPrice() {
    const result = await db.query("SELECT i.model_name, MIN(p.price) AS lowest_price, im.image_1, im.image_2, im.image_3 FROM iphone i JOIN price p ON i.iphone_id = p.iphone_id JOIN image im ON p.iphone_id = im.color_id GROUP BY i.model_name, im.image_1, im.image_2, im.image_3;");
    let aPrice = [];
    result.rows.forEach((list) => {
        aPrice.push(list)
    });
    return aPrice;
}

// Maximum price-list for each model
async function maxPrice() {
    const result = await db.query("SELECT i.iphone_id, i.model_name, m.memory_id, m.memory_size, p.price_id, p.price, c.color_id, c.color_name, im.image_id, im.image_1, im.image_2, im.image_3 FROM iphone AS i JOIN memory_size AS m ON i.iphone_id = m.iphone_id JOIN price AS p ON i.iphone_id = p.iphone_id JOIN color AS c ON i.iphone_id = c.iphone_id JOIN image AS im ON c.color_id = im.color_id;");
    let mPrice = [];
    result.rows.forEach((list) => {
        mPrice.push(list)
    });
    return mPrice;
}

// Posts check
async function postsList() {
    const result = await db.query("SELECT p.id, p.name, p.city, p.number, p.model, p.memory, p.color, p.condition, p.detail, p.price, p.time, i.image_1, i.image_2, i.image_3 FROM post AS p JOIN iphone_board AS i ON p.model = i.model_name AND p.memory = i.memory_size AND p.color = i.color_name;");
    let posts = [];
    result.rows.forEach((post) => {
        posts.push(post)
    });
    return posts;
}

//---------------------- Middlewares ----------------------//
// app use: urlencoded, static, json
app.use(bodyparser.urlencoded({ extended: true }));
app.use(express.static("public"));
app.use(bodyparser.json());

// ---------------------- Get iPhone table ---------------------- //

// Get Minimum price list
app.get("/api/minprice", async (req, res) => {
    try {
        const mPrice = await minPrice();
        res.json(mPrice);
    } catch (error) {
        console.error("An error occurred:", error);
        // Handle the error here (e.g., log it, send an error response, etc.)
    }
});

// Get Maximum price list
app.get("/api/combine", async (req, res) => {
    try {
        const maximunPrice = await maxPrice();
        res.json(maximunPrice);
    } catch (error) {
        console.error("An error occurred:", error);
        // Handle the error here (e.g., log it, send an error response, etc.)
    }
});

// ---------------------- Post section ---------------------- //

// New post - Insert
app.post("/api/sell", async (req, res) => {
    try {
        const { name, city, number, model, memory, color, condition, detail, price, time } = req.body;

        // Check if the model information exists
        const modelCheck = await db.query(
            "SELECT iphone.model_name, memory_size.memory_size, color.color_name, image.image_1 FROM iphone JOIN memory_size ON iphone.iphone_id = memory_size.iphone_id JOIN color ON iphone.iphone_id = color.iphone_id JOIN image ON color.color_id = image.color_id WHERE iphone.model_name = $1 AND memory_size.memory_size = $2 AND color.color_name = $3;",
            [model, memory, color]
        );

        // If no results, respond with an error
        if (modelCheck.rows.length === 0) {
            return res.status(404).json({ message: "Model information not found." });
        }

        // Insert the post
        await db.query(
            "INSERT INTO post (name, city, number, model, memory, color, condition, detail, price, time) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10) RETURNING *;",
            [name, city, number, model, memory, color, condition, detail, price, time]
        );

        res.status(200).json({ message: "Item added successfully!" });
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: "Internal server error" });
    }
});

// Get all posts
app.get("/api/post", async (req, res) => {
    try {
        const posts = await postsList();
        res.json(posts);
    } catch (error) {
        console.error("An error occurred:", error);
        // Handle the error here (e.g., log it, send an error response, etc.)
    }
});

// Delete post by id
app.delete("/api/post/delete/:id", async (req, res) => {
    try {
        const postId = parseInt(req.params.id);

        // Execute the DELETE query
        const result = await db.query("DELETE FROM post WHERE id = $1", [postId]);

        // Check if any rows were affected
        if (result.rowCount === 0) {
            return res.status(404).json({ error: "Post not found" });
        }

        // Successful deletion
        res.status(200).json({ message: "Post deleted successfully" });
    } catch (error) {
        console.error("Error deleting post:", error);
        res.status(500).json({ error: "Internal Error" });
    }
});

// Get post by id
app.get("/api/post/:id", async (req, res) => {
    try {
        const getId = await db.query("SELECT * FROM post WHERE id = $1", [req.params.id]);
        res.json(getId);
    } catch (error) {
        // Handle the error here
        console.error("An error occurred:", error);
        res.status(500).json({ error: "Internal server error" });
    }
});


// Update post by id
app.patch("/api/post/:id", async (req, res) => {
    try {
        const retrievedPost = await db.query("SELECT * FROM post WHERE id = $1", [req.params.id]);
        if (!retrievedPost) return res.status(404).json({ message: "Error: Post not found" });
        // Check if the model information exists
        const modelCheck = await db.query(
            "SELECT iphone.model_name, memory_size.memory_size, color.color_name, image.image_1 FROM iphone JOIN memory_size ON iphone.iphone_id = memory_size.iphone_id JOIN color ON iphone.iphone_id = color.iphone_id JOIN image ON color.color_id = image.color_id WHERE iphone.model_name = $1 AND memory_size.memory_size = $2 AND color.color_name = $3;",
            [req.body.model, req.body.memory, req.body.color]
        );

        // If no results, respond with an error
        if (modelCheck.rows.length === 0) {
            return res.status(404).json({ message: "Model information not found." });
            
        }

        // Update post properties if valid values are provided
        retrievedPost.name = req.body.name || retrievedPost.name;
        retrievedPost.city = req.body.city || retrievedPost.city;
        retrievedPost.number = req.body.number || retrievedPost.number;
        retrievedPost.model = req.body.model || retrievedPost.model;
        retrievedPost.memory = req.body.memory || retrievedPost.memory;
        retrievedPost.color = req.body.color || retrievedPost.color;
        retrievedPost.condition = req.body.condition || retrievedPost.condition;
        retrievedPost.detail = req.body.detail || retrievedPost.detail;
        retrievedPost.price = req.body.price || retrievedPost.price;
        // ... other properties ...

        // Construct the UPDATE query dynamically based on provided properties
        const updateQuery = `
            UPDATE post
            SET
                name = $1,
                city = $2,
                number = $3,
                model = $4,
                memory = $5,
                color = $6,
                condition = $7,
                detail = $8,
                price = $9
            WHERE id = $10
        `;

        const values = [
            retrievedPost.name,
            retrievedPost.city,
            retrievedPost.number,
            retrievedPost.model,
            retrievedPost.memory,
            retrievedPost.color,
            retrievedPost.condition,
            retrievedPost.detail,
            retrievedPost.price,
            req.params.id
        ];

        await db.query(updateQuery, values);
        res.status(200).json({ message: "Post updated successfully" });
    } catch (error) {
        console.error("Error updating post:", error.message);
        res.status(500).json({ message: "Error updating post" });
    }
});

// Stock Update
app.post("/stock", async (req, res) => {
    try {
        const stock = req.body.stock;
        const model = req.body.model; // Corrected variable name
        const memory = req.body.memory; // Corrected variable name
        const color = req.body.color; // Corrected variable name

        if (!stock || !model || !memory || !color) {
            return res.status(400).json({ error: "Missing required parameters." });
        }

        await db.query("UPDATE iphone_board SET stock = $1 WHERE model_name = $2 AND memory_size = $3 AND color_name = $4;", [stock, model, memory, color]);
        return res.status(200).json({ message: "Stock updated successfully." });
    } catch (error) {
        console.error("Error updating stock:", error);
        return res.status(500).json({ error: "Internal server error." });
    }
});

// Get Stock
app.get("/stock/exist", async (req, res) => {
    try {
        // Code that may cause an error
        const stockNumber = await db.query("SELECT DISTINCT model_name, memory_size, iphone_board.color_name, image_1, image_2, image_3, stock, color_he FROM iphone_board JOIN color ON color.color_name = iphone_board.color_name WHERE stock > 0;");
        res.json(stockNumber);
    } catch (error) {
        // Code to handle the error
        console.error("An error occurred:", error);
    }    
});

// Start the server
app.listen(port, () => {
    console.log("Server is running");
});
