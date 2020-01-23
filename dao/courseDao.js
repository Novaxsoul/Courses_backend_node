const models = require('../models')
const Sequelize = require('sequelize');
const op = Sequelize.Op;

class CourseDAO {
    findAllCourses(req, res) {
        let offset = parseInt(req.query.offset)
        let limit = parseInt(req.query.limit)
        if(!offset) {offset = 0}
        if(!limit) {limit = 6}
        let previous = null
        if(offset !== 0){
            previous = `courses/?limit=${limit}&offset=${offset - limit}`
        }
        let next = `courses/?limit=${limit}&offset=${offset + limit}`
        if (req.query.search) {
          let search = req.query.search
          models.Course.findAll({ offset: offset,limit: limit, where: {name: { [op.like]: '%'+ search +'%' } }, raw: true}).then(courses => {
            res.json({previous,next,offset,limit,courses});
          })
          .catch(err => console.log(err));
        } else {
          models.Course.findAll({offset: offset,limit: limit}).then(courses => {
            res.json({previous,next,offset,limit,courses});
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