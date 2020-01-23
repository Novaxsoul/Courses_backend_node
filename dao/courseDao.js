const models = require('../models')
const Sequelize = require('sequelize');
const op = Sequelize.Op;

class CourseDAO {
    findAllCourses(req, res) {
        if (req.query.search) {
          let search = req.query.search
          models.Course.findAll({ where: {title: { [op.like]: '%'+ search +'%' } }, raw: true}).then(courses => {
              res.json({courses});
          })
          .catch(err => console.log(err));
        } else {
          models.Course.findAll().then(courses => {
              res.json({courses});
          })
          .catch(err => console.log(err));
        }
    };
    
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

    editCourse(req, res) {
        let pk = req.query.pk
        let data = req.body
        models.Course.findByPk(pk).then(course => {
            course.name = data.name
            course.descrp = data.descrp
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

module.exports = CourseDAO;