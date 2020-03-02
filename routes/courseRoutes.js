// Dependencies and files required
const express = require('express')
const {getCourses, saveCourse, editCourse, deleteCourse} = require('../controllers/courseController')
const validator = require('../validator/index')
const auth = require('../validator/auth')
const router = express.Router()

// Build the routes
router.get('/', auth.jwtfilter, getCourses)
router.post('/save', [validator.courseValidator, auth.jwtfilter], saveCourse)
router.put('/edit', [validator.courseValidator, auth.jwtfilter], editCourse)
router.delete('/delete', auth.jwtfilter, deleteCourse)

module.exports = router