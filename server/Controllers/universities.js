const Users = require('../Models/universities');

exports.all = (req, res) => {
  Users.all((err, result) => {
    if (err) {
      console.log(err);
      return  res.sendStatus(500);
    }
    res.send(result);
  })
}

exports.one = (req, res, next) => {
  if (!Number.isInteger(+req.params.id)) {
    next();
  }
  else {
    Users.one(req, (err, result) => {
      if (err) {
        console.log(err);
        return  res.sendStatus(500);
      }
      res.send(result);
    })
  }

}

exports.addscore = (req, res) => {
  Users.addscore(req, (err, result) => {
    if (err) {
      console.log(err);
      return  res.sendStatus(500);
    }
    res.send(result);
  })
}

exports.gettop = (req, res) => {
  Users.gettop(req, (err, result) => {
    if (err) {
      console.log(err);
      return  res.sendStatus(500);
    }
    res.send(result);
  })
}

// const resultHandler = (err, result) => {
//   if (err) {
//     console.log(err);
//     return  res.sendStatus(500);
//   }
//   res.send(result);
// }
