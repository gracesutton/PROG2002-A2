
// import the modules
const express=require("express"); // for a webserver (express)
const bodyParser=require("body-parser"); // parse the body of the request
const path=require("path"); // handle file paths

// create a new express webserver app
const app=express();

//to parse URL-encoded data
app.use(bodyParser.urlencoded({extended:true}));

//to serve static files
app.use(express.static(__dirname));

//route to serve index.html (load html and send to client)
//first endpoint - using GET message
app.get("/",(req,res)=>{
  // render/send the index.html file
  res.sendFile(path.join(__dirname,"index.html"));
});

//route to serve concert.html
app.get("/concert",(req,res)=>{
  res.sendFile(path.join(__dirname,"concert.html"));
});

// start running the webserver on port 8080
app.listen(8080,()=>{
  console.log("Server running at http://localhost:8080");
});