const db = require('../mysql.js');

exports.all = (cb) => {
  // const sql = `SELECT t1.*, t2.*, t3.name as specialty_name, t3.directions, t3.faculty, t3.tags, t4.name as study_name
  //               FROM universities as t1
  //               INNER JOIN universities_specialty as t2 ON t1.id = t2.universities_id
  //               INNER JOIN specialty as t3 ON t3.id = t2.specialty_id
  //               INNER JOIN study_form as t4 ON t4.specialty_id = t3.id
  //             `;
   const sql = `SELECT * FROM universities`;
  db.get().query(sql, (err, result) => {
    cb(err, result);
  });
}

exports.one = (req, cb) => {
  const sql = `SELECT * FROM universities WHERE id = ${req.params.id}`;
  db.get().query(sql, (err, result) => {
    cb(err, result);
  });
}

exports.addscore = (req, cb) => {
  const sql = `UPDATE universities SET score = score + 1 WHERE id = ${req.params.id}`;
  db.get().query(sql, (err, result) => {
    cb(err, result);
  });
}

exports.gettop = (req, cb) => {
  const sql = `SELECT * FROM universities WHERE score > 0 ORDER BY score DESC LIMIT 3`;
  db.get().query(sql, (err, result) => {
    cb(err, result);
  });
}
