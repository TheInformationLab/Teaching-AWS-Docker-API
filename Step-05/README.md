Now we are going to create such an API ourselves, to generate some random numbers

# Step 1

Setup env:

1. git init
2. touch .gitignore
3. add node_modules to gitignore
4. npm init —y (to create package json file)
5. install express: npm i express and create app.js file
6. create basic app.js - with one route res.send('Hello')

```jsx
const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;

app.get("/test", (req, res) => {
  res.json((msg: "Hello World"));
});

app.listen(PORT, () => {
  console.log("Server is running on port ", PORT);
});
```

7. install nodemon as dev dependency and use 'npm run dev' for that
8. Create public folder and HTML file
9. Tell the server to use these files:

```jsx
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, "public")));
```

```jsx
app.use(express.static(path.join(__dirname, "public"), options));

app.get("/", (req, res) => {
  res.send(index.html);
});
```

10. For creating a post route we need some more middleware (npm install body-parser) (more info [here](https://stackabuse.com/get-http-post-body-in-express-js/))

11. load this as bodyParser = require('body-parser')

```jsx
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
```

12. Create route for the numbers & add JSON with random numbers
