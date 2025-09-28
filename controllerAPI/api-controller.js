// import express, connect to DB, and create a router
const express = require('express');
const connection = require('../event_db.js');
const router = express.Router();

// READ all events
router.get('/', (req, res) => {
  connection.query('SELECT * FROM Events', (err, results) => {
    if (err) {
      console.error('Error retrieving events:', err);
    } else {
        res.send(results);
    }
  });
});

// READ single event by ID
router.get('/:id', (req, res) => {
  connection.query('SELECT * FROM Events WHERE EventID =' + req.params.id, (err, results) => {
    if (err) {
      console.error('Error retrieving event:', err);
    } else {
        res.send(results);
    }
  });
});

// export the router
module.exports = router;
