// Dependencies and files required
const express = require('express')
const {registerUser, login} = require('../controllers/userController')
const validator = require('../validator/index')
const router = express.Router()

// Build the routes
router.post('/register', validator.userValidator, registerUser)
router.post('/login', validator.loginValidator, login)

module.exports = router