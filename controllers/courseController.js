// Dependencies and files required
const CourseDAO = require('../dao/courseDao');

// Create a CourseDao object
const CourseDao = new CourseDAO()

//Exports the methods for get, save, edit and delete the courses
exports.getCourses = (req, res) => {
    res = CourseDao.findAllCourses(req, res);
}

exports.saveCourse = (req, res) => {
    res = CourseDao.saveCourse(req.body, res);
}

exports.editCourse = (req, res) => {
    res = CourseDao.editCourse(req, res);
}

exports.deleteCourse = (req, res) => {
    res = CourseDao.deleteCourse(req, res);
}