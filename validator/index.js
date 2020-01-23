const { check, validationResult } = require('express-validator');

exports.courseValidator = (req, res, next) => {

    console.log(req.body)
    req.check('name', 'Write a name').notEmpty();
    req.check('name', 'El título debe tener como mínimo 4 caracteres y máximo 255 caracteres').isLength({
        min: 4,
        max: 255
    });
    req.check('descrp', 'Write a description').notEmpty();
    req.check('descrp', 'La descripción debe tener como mínimo 4 caracteres y máximo 2000 caracteres').isLength({
        min: 4,
        max: 2000
    });

    // Revisa errores
    const errors = req.validationErrors()

    if (errors) {
        const firstError = errors.map((error) => error.msg)[0];
        return res.status(400).json({error: firstError});
    }


    next()
}