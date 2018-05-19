var db = require('../db');
var mysql = require('mysql');
var Promise = require('bluebird');

module.exports = {
  messages: {
    get: function (res) {
      //db.dbConnection.query(`SELECT `)
    },
    
    post: function (message, res) {
      //db.dbConnection.connect();
      return new Promise(function(resolve, reject) {
        db.query(`INSERT INTO MESSAGES (username, message, roomname) VALUES ("${message.username}", "${message.message}", "${message.roomname}")`)
          .then(function(err, res) {
          //console.log('message received', res);
          }, function(err) {
          //console.log('error', err);
          });
      });
    }
  },
  users: {
    // Ditto as above.
    get: function () {},
    post: function (users, res) {
      //db.dbConnection.connect();
      return new Promise(function(resolve, reject) {
        db.query(`INSERT INTO users (username) VALUES ("${users.username}")`, function(err, data) {
          
          if (err) {
            reject(err);
          } else {
            resolve(data);
          }
          //console.log('error', err);
        });
        //.then(function(err, resolve) {
        //console.log('message received', res);
        //s }, 
        
      });
    }
  }
};



