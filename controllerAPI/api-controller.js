// import express, connect to DB, and create a router
const express = require('express');
const connection = require('../event_db.js');
const e = require('express');
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

// GET all categories
router.get('/categories/list', (req, res) => {
  connection.query( 'SELECT * FROM Categories ORDER BY CategoryName ASC', (err, results) => {
      if (err) {
        console.error('Error retrieving categories:', err);
      } else {
      res.send(results);
      }
    });
});


// READ single event by ID
router.get('/:id', (req, res) => {
  const sql = `
    SELECT e.EventID, e.EventName, e.Description, e.EventDate, e.Location,
           e.TicketPrice, e.GoalAmount, e.CurrentProgress,
           c.CategoryName,
           o.OrganisationName, o.OrganisationDescription, o.Website, o.Phone
    FROM Events e
    JOIN Categories c ON e.CategoryID = c.CategoryID
    JOIN Organisations o ON e.OrganisationID = o.OrganisationID
    WHERE e.EventID = ?
  `;
  connection.query(sql, [req.params.id], (err, results) => {
    if (err) {
      console.error('Error retrieving event:', err);
    } else {
        res.send(results[0]);
        
    }
  });
});



// export the router
module.exports = router;
