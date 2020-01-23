// Dependencies and files required
const path = require('path');
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const expressValidator = require('express-validator')
const courseRoutes = require('./routes/courseRoutes')

// Create the server
const app = express()

// Images directory to serve
const dir = path.join(__dirname, 'public')

// Middlewares
app.use(express.static(dir));
app.use(bodyParser.json())
app.use(expressValidator())
app.use(cors())


// Import routes
app.use('/api/courses', courseRoutes)

// Port of the server
const port = 8000;

app.listen(port, () => { console.log(`A node JS API is listening on port: ${port}`) })