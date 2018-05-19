var db = require('../db');
var http = require('http');

//'http://'
module.exports = {
  messages: {
  //   get: function (http://127.0.0.1:3000/classes/messages, (res) => {
  //     var data = '';
  //     res.on('data', (chunk) => {
  //       data += chunk;
  //     });
  //   res.on('end', () => {
  //     console.log(JSON.parse(data));
  //   });

  // }, // a function which produces all the messages
  //   post: function () {} // a function which can be used to insert a message into the database
  // },

  users: {
    // Ditto as above.
    get: function () {},
    post: function () {}
  }
}
}

