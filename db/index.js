const mysql = require('mysql');
const mysqlConfig = require('./config.js');

var connection = mysql.createConnection(mysqlConfig);

// Create functions
getImage = function(id, callback) {
    connection.query(`SELECT * FROM Products WHERE id = ${id}`, (err, result) => {
        if (err) {
            callback(err, null);
        } else {
            callback(null, result);
        }
    })
}

// module.export functions

module.exports.getImage = getImage;