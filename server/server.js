const express = require('express');
const cors = require('cors');
const app = express();
const db = require('../db/index.js');

app.use(cors());
app.use('/', express.static('public'));


app.use('/bundle', express.static('public/bundle.js'));
app.use('/styleSheet', express.static('public/styles.css'));

app.get(`/:id`, function (req, res) {
    db.getImage(req.params.id, (error, result) => {
        if (error) {
            res.send(error);
        } else {
            res.send(result);
        }
    })
});

app.listen(3010, function() {
    console.log('listening')
});