# iResale (RTL Hebrew language)

iResale is a store for managing the inventory of refurbished iPhones, along with a second-hand board for user advertisements. The application is designed to handle various aspects of iPhone sales, including pricing, stock management, and user posts.

## Installation

Follow these steps to set up and run the iResale application:

1. **Create a New Database:**
   - Create a PostgreSQL database named "apple."
   - You can use a database management tool (such as pgAdmin) to create the database.

2. **Create Tables:**
   - Set up the following 7 tables in your database:
     - `color`: Stores information about iPhone colors.
     - `image`: Contains image data related to iPhones.
     - `iphone`: Holds details about individual iPhones.
     - `iphone_board`: Manages user posts on the bulletin board.
     - `memory_size`: Stores memory size options for iPhones.
     - `post`: Represents user posts (iPhones for sale).
     - `price`: Stores pricing information.

3. **Restore Tables:**
   - Populate the tables using data from the `tables` folder.
   - Ensure that each table contains relevant data.

4. **Database Connection Details:**
   - Provide the necessary database connection details:
     - User: 'postgres'
     - Host: 'localhost'
     - Database: 'apple'
     - Password: '12345'
     - Port: 5432

5. **Install Dependencies:**
   - Run `npm install` inside your project directory to install any required dependencies.

6. **Run the Application:**
   - Open two Git terminals.
   - In one terminal, run `nodemon api.js`.
   - In the other terminal, run `nodemon index.js`.

7. **Access the Application:**
   - Your application will be available at [http://localhost:3000].

8. **Inventory Management Page:**
   - Explore the secret inventory management page, accessible at [http://localhost:3000/stock].
   - Use this page to manage stock levels in the store.

## API Endpoints

Here are the API endpoints exposed by the iResale application:

1. **Get Lowest Price List from Refurbished Store for Each Model:**
   - Endpoint: [http://localhost:4000/api/minprice]

2. **Get All Model Combinations of iPhone Products:**
   - Endpoint: [http://localhost:4000/api/combine]

3. **Create a New Post (User's iPhone) for Sale in the Board Category:**
   - Endpoint: [http://localhost:3000/api/sell]
   - Request Body Parameters:
     - `name`, `city`, `number`, `model`, `memory`, `color`, `condition`, `detail`, `price`
   - Note: Validate the model, memory, and color against valid product combinations.

4. **Get All Posts from the Board:**
   - Endpoint: [http://localhost:3000/api/post]

5. **Delete a Post by ID:**
   - Endpoint: [http://localhost:3000/api/post/delete/:id] (Replace `:id` with the actual post ID)

6. **Get a Post by ID:**
   - Endpoint: [http://localhost:3000/api/post/:id] (Replace `:id` with the actual post ID)

7. **Check Store Stock:**
   - Endpoint: [http://localhost:3000/stock/exist]

Additionally, here are some files associated with the project:

Diagram.drawio: This file in the Tables folder shows the database structure using a visual diagram.
README.sql: Inside the Tables folder, you’ll find SQL commands used to build the databases.