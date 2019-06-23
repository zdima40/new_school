const Fuse = require('fuse.js');

// var books = [{
//   'ISBN': 'A',
//   'title': "Old Man's War",
//   'author': 'John Scalzi'
// }, {
//   'ISBN': 'B',
//   'title': 'The Lock Artist',
//   'author': 'Steve Hamilton'
// }]
//
// var options = {
//   keys: ['title', 'author'],
//   id: 'ISBN'
// }
// var fuse = new Fuse(books, options)

var books = [{
  'ISBN': 'A',
  'title': "Old Man's War",
  'author': {
    'name': 'John Scalzi',
    'tags': [{
      value: 'American'
    }]
  }
}, {
  'ISBN': 'B',
  'title': 'The Lock Artist',
  'author': {
    'name': 'Steve Hamilton',
    'tags': [{
      value: 'English'
    }]
  }
}]

var options = {
  keys: ['author.tags.value'],
};
var fuse = new Fuse(books, options)

console.log(fuse.search('engsh'));
