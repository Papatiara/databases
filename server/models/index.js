var db = require('../db');
var mysql = require('mysql');
var Promise = require('bluebird');

module.exports = {
  messages: {
    get: function () {
      
    },
    post: function (message, res) {
      return new Promise(function(resolve, reject) {
        db.query(`INSERT INTO messages (message) VALUES ("${message.message}")`, function(err, data) {
          if (err) {
            reject(err);
          } else {
            res.status(201);
            console.log('message username finished');
            
            resolve(data);
            res.end();
          }
        });   
      });
      return new Promise(function(resolve, reject) {
        db.query(`INSERT INTO rooms (roomname) VALUES ("${message.roomname}")`, function(err, data) {
          if (err) {
            reject(err);
          } else {
            res.status(201);
            console.log('room finished');
            resolve(data);
            res.end();
          }
        });   
      });
    }
  },
  users: {
    // Ditto as above.
    get: function () {},
    post: function (users, res) {
      return new Promise(function(resolve, reject) {
        db.query(`INSERT IGNORE INTO users (username) VALUES ("${users.username}")`, function(err, data) {
          if (err) {
            reject(err);
          } else {
            res.status(201);
            console.log('response finished');
            resolve(data);
            res.end();
          }
        });
      });
    }
  }
};



