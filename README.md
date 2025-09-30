# PROG2002-A2

Gold Coast Charity Connect
PROG2002 Web Development II - Assessment 2
By Grace Sutton (#23290509)

Gold Coast Charity Connect is a dynamic web app that centralises charity events within the Gold Coast area. It uses a MySQL database to store event, organisation, and category data, an Express-based RESTful API to serve that data, and frontend pages that fetch and display results dynamically, allowing users to browse, search, and view event details. 

## Getting Started

### Dependencies

* Node.js (v16 or higher recommended)
* MySQL (v8 or higher)
* npm packages: express, body-parser, mysql2

### Installing

Clone or download the project files.
Run ```npm install``` to install dependencies.
Set up a MySQL database called ```charityevents_db```.
Import the provided schema SQL file.
Update the database credentials in ```event_db.js``` if required.

### Executing program

Start the server:
```npm start``` OR ```node server.js```

Open the browser and go to:
http://localhost:8080

## API Endpoints

* GET /api/events → all events with category info
* GET /api/events/:id → details of a single event
* GET /api/events/categories/list → list of categories
* GET /api/events/search?date=&location=&categoryID= → search with filters