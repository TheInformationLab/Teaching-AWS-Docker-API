const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;
const path = require("path");
const numbers = require("./numbers.json");
const bodyParser = require("body-parser");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(express.static(path.join(__dirname, "public")));
// METHODS: GET, POST, PUT, DELETE, UPDATE, HEAD

// the index route
app.get("/", (req, res) => {
  // database requests
  // request to database for latest products for example
  // render the index page
  console.log("Hello, you made a request to this route!!", Date.now());
  res.status(200);
  res.send(index.html);
});

app.get("/numbers", (req, res) => {
  // get data from local file
  // but could also be a database connection!
  res.json(numbers);
});

app.get("/number/:factId", (req, res) => {
  console.log(req.params.factId);
  const numberToReturn = numbers.filter(
    //   use plus to make it a number
    (fact) => fact.number === +req.params.factId
  );
  res.json(numberToReturn[0]);
});

app.post("/numbers", (req, res) => {
  // You can make a insert into the database!
  const postData = req.body;
  console.log(postData);
  res.json(postData);
});

app.listen(PORT, () => {
  console.log("Server is running on port ", PORT);
});
