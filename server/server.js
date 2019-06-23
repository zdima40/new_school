const express = require('express');
const bodyParser = require('body-parser');
const db = require('./mysql');
const universitiesController = require('./Controllers/universities');

const app = express();
const PORT = 3001;

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));
// parse application/json
app.use(bodyParser.json());
//connect to db and handler error
app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
  next();
});

db.connect((err) => {
  throw err;
})

//Routes
app.get('/universities', universitiesController.all);
app.get('/universities/:id', universitiesController.one);
app.get('/universities/gettop/', universitiesController.gettop);
app.get('/universities/addscore/:id', universitiesController.addscore);

app.listen(PORT, () => console.log(`Server started on port ${PORT}.`));
