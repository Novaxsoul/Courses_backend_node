const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const expressValidator = require('express-validator')
const courseRoutes = require('./routes/courseRoutes')

const app = express()

// Middlewares
app.use(bodyParser.json())
app.use(expressValidator())
app.use(cors())


// Import routes
app.use('/api/course', courseRoutes);

const port = 8000;

app.listen(port, () => { console.log(`A node JS API is listening on port: ${port}`) })