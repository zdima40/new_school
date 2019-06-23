//Module MySql DB Connection
const mysql = require('mysql');

const state = {
  db: null
};

exports.connect = (done) => {
  if (state.db) {
    return done();
  }

  // const db = mysql.createConnection({
  //   host     : '192.168.88.254',
  //   user     : 'root',
  //   password : 'root',
  //   database : 'hackathon_2019',
  //   port : 3306,
  //   connectTimeout: 100000000
  // });

  const db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'hackathon_2019',
    port : 3307,
    connectTimeout: 100000000
  });


  db.connect((err) => {
    if (err) {
      done(err);
    };
    console.log('MySql Connected...');
  });

  db.query('SET GLOBAL connect_timeout=28000');
  db.query('SET GLOBAL wait_timeout=28000');
    db.query('SET GLOBAL interactive_timeout=28000');  
  state.db = db;

}

exports.get = () => state.db
