// Dependencies and files required
const path = require('path');
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')
const expressValidator = require('express-validator')
const courseRoutes = require('./routes/courseRoutes')
const userRoutes = require('./routes/userRoutes')
const db = require('./models/index')

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
app.use('/api/users', userRoutes)

// Port of the server
const port = 8000;

db.sequelize.sync().then(() => {
    app.listen(port, () => { console.log(`A node JS API is listening on port: ${port}`) })
})
