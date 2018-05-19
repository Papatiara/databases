var models = require('../models');


module.exports = {
  messages: {
    get: function (req, res) {
      sendResponse(res, {results: messages});
    }, // a function which handles a get request for all messages
    post: function (req, res) {
      collectData(req, function(message) {
      message.objectId = ++objectIdCounter;
      messages.push(message);
      sendResponse(res, {objectId: message.objectId}, 201);
    });
      
    } // a function which handles posting a message to the database
  },

  users: {
    // Ditto as above
    get: function (req, res) {
      
      
    },
    post: function (req, res) {}
  }
};

sendResponse = function(response, data, statusCode) {
  statusCode = statusCode || 200;
  response.writeHead(statusCode, headers);
  response.end(JSON.stringify(data));
};
collectData = function(request, callback) {
  var data = '';
  request.on('data', function(chunk) {
    data += chunk;
  });
  request.on('end', function() {
    callback(JSON.parse(data));
  });
};