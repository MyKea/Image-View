const express = require('express');
const app = express();
const db = require('../db/index.js');

app.use(express.static('public'));

app.get(`/:id`, function (req, res) {
    db.getImage(req.params.id, (error, result) => {
        if (error) {
            res.error(error);
        } else {
            res.send(result);
        }
    })
});

app.listen(3010, function() {
    console.log('listening')
});
