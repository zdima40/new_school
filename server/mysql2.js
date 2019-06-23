//Module MySql DB Connection
const mysql = require('mysql2');

const state = {
  db: null
};

exports.connect = (done) => {
  if (state.db) {
    return done();
  }

  const db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'hackathon_2019',
    port : 3307
  });

  db.connect((err) => {
    if (err) {
      done(err);
    };
    console.log('MySql Connected...');
  });

  state.db = db;
}

exports.get = () => state.db
