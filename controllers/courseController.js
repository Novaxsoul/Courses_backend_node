const express = require('express');
const CourseDAO = require('../dao/courseDao');

const CourseDao = new CourseDAO()

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