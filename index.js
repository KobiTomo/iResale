import express from "express";
import bodyparser from "body-parser";
import axios from "axios";

const app = express();
const port = 3000;
const API_URL = "http://localhost:4000"

app.use(bodyparser.urlencoded({ extended: true }));
app.use(express.static("public"));
app.use(bodyparser.json());


// Render root mini stock
app.get("/", async (req, res) => {
    try {
        const minPrice = await axios.get(`${API_URL}/api/minprice`);
        res.render("index.ejs", { device: minPrice.data });
    } catch (error) {
        console.error("Error fetching minPrice:", error);
        res.status(500).send("Internal server error");
    }
});

// Render sell.ejs max stock
app.get("/sell", async (req, res) => {
    try {
        res.render("sell.ejs");
    } catch (error) {
        console.error("Error fetching maxPrice:", error);
        res.status(500).send("Internal server error");
    }
});

// Form to create a new post
app.post("/form", async (req, res) => {
    try {
        const currentDate = new Date();
        const options = { year: "numeric", month: "numeric", day: "numeric" };
        const time = new Intl.DateTimeFormat("he", options).format(currentDate);
        const result = req.body;
        result.time = time;
        await axios.post(`${API_URL}/api/sell`, req.body);
        res.redirect("/board");
    } catch (error) {
        console.error("Error creating new post:", error);
        res.render("sell.ejs", {
            message: "דגם לא נמצא, בחר דגם קיים",
            name: req.body.name,
            city: req.body.city,
            number: req.body.number,
            detail: req.body.detail,
            price: req.body.price
        });
    }
});

// Render posts board.ejs
app.get("/board", async (req, res) => {
    try {
        const response = await axios.get(`${API_URL}/api/post`);
        res.render("board.ejs", { posts: response.data });
    } catch (error) {
        console.error("Error fetching posts:", error);
        res.status(500).send("Internal server error");
    }
});

// Delete post
app.get("/board/delete/:id", async (req, res) => {
    try {
        await axios.delete(`${API_URL}/api/post/delete/${req.params.id}`);
        console.log("Post deleted successfully");
        res.redirect("/board");
    } catch (error) {
        console.error("Error deleting post:", error);
        res.status(500).send("Internal server error");
    }
});

// Get post by ID
app.get("/sell/:id", async (req, res) => {
    try {
        const postResponse = await axios.get(`${API_URL}/api/post/${req.params.id}`);
        const post = postResponse.data.rows;

        // Render the 'sell.ejs' template with the retrieved post data
        res.render("sell.ejs", {
            posts: post
        });
    } catch (error) {
        console.error("Error fetching post by ID:", error);

        // Send an appropriate error response to the client
        res.status(500).send("Error fetching post. Please try again later.");
    }
});

// Patch edit post
app.post("/form/:id", async (req, res) => {
    try {
        const result = await axios.patch(`${API_URL}/api/post/${req.params.id}`, req.body);
        res.redirect("/board");
    } catch (error) {
        console.error("Error updating post:", error.message);
        res.render("sell.ejs", {
            message: "דגם לא נמצא, בחר דגם קיים",
            name: req.body.name,
            city: req.body.city,
            number: req.body.number,
            detail: req.body.detail,
            price: req.body.price // Make sure the 'price' field is included
        });
    }
});

// Stock
app.get("/stock", (req, res) =>{
    try {
        // Code that may cause an error
        res.render("stock.ejs");
    } catch (error) {
        // Code to handle the error
        console.error("An error occurred:", error);
    }
});

// Stock form update
app.post("/stock-form", async (req, res) => {
    try {
        await axios.post(`${API_URL}/stock`, req.body);
        res.redirect("/stock");
    } catch (error) {
        console.error("Error while updating stock:", error.message);
        res.status(500).send("Oops! Something went wrong.");
    }
});

// Stock exist page
app.get("/stockin", async (req, res) => {
    try {
        // Code that may cause an error
        const result = await axios.get(`${API_URL}/stock/exist`);
        const data = result.data;
        res.render("stockin.ejs", {
            model: data.rows
        });
    } catch (error) {
        // Code to handle the error
        console.error("An error occurred:", error);
    }
});






















app.listen(port, () => {
    console.log("Server is running on port", port);
});