const express = require('express')
const {getCourses, saveCourse, editCourse, deleteCourse} = require('../controllers/courseController')
const validator = require('../validator')
const router = express.Router()

router.get('/', getCourses)
router.post('/save', validator.courseValidator, saveCourse)
router.put('/edit', validator.courseValidator, editCourse)
router.delete('/delete', deleteCourse)

module.exports = router