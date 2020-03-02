// Dependencies and files required
const models = require('../models')
const Sequelize = require('sequelize');
const op = Sequelize.Op;

// Class to map the Course table
class CourseDAO {
    // Method to get all courses
    findAllCourses(req, res) {
        // Get offset and limit from get parameters to build the pagination
        let offset = parseInt(req.query.offset)
        let limit = parseInt(req.query.limit)
        if(!offset) {offset = 0}
        if(!limit) {limit = 6}

        let previous = null

        // Build previous url if there's previous data
        if(offset !== 0){
            previous = `courses/?limit=${limit}&offset=${offset - limit}`
        }

        // Build next url for the following data
        let next = `courses/?limit=${limit}&offset=${offset + limit}`

        // If there's a search parameter, get the courses filtering the name with the search value
        if (req.query.search) {
          let search = req.query.search
          // Build next url with search filter for the following data
          next = next + `&search=${search}`

          // Query the database with the filter, limit and offset
          models.Course.findAll({ offset: offset,limit: limit, where: {name: { [op.like]: '%'+ search +'%' } }, raw: true}).then(courses => {

            // If database doesn't return data, put the next url to null
            if(courses.length == 0){next = null}

            // Send the response in JSON format
            res.json({previous,next,offset,limit,courses});
          })
          .catch(err => console.log(err));
        } 
        // If there´s no search parameter, get all the courses
        else {
            // Query the database with the limit and offset
            models.Course.findAll({offset: offset,limit: limit}).then(courses => {

                // If database doesn't return data, put the next url to null
                if(courses.length == 0){next = null}

                // Send the response in JSON format
                res.json({previous,next,offset,limit,courses});
            })
            .catch(err => console.log(err));
        }
    };
    
    // Method to save a course
    saveCourse(data, res) {
        models.Course.build(data)
        .save()
        .then(result => {
            res.json({course: result});
        })
        .catch(err => {
            console.log(err);
        })

    };

    // Method to edit a course
    editCourse(req, res) {
        let pk = req.query.pk
        let data = req.body
        models.Course.findByPk(pk).then(course => {
            course.name = data.name
            course.provider = data.provider
            course.price = data.price
            course.rate = data.rate
            course.credits = data.credits
            course.image = data.image
            course.save().then(course => {
                res.json({ course: course})
            }).catch(err => {
                console.log(err)
            })
        })
        .catch((err) => {
            console.log(err);
        })
    };

    // Method to delete a course
    deleteCourse(req, res) {
        let pk = req.query.pk
        models.Course.findByPk(pk).then(course => {
            course.destroy({ force: true });
            res.json({ course: course})
        })
        .catch((err) => {
            console.log(err);
        })
    };
}

// Exports the class
module.exports = CourseDAO;