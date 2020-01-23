const { check, validationResult } = require('express-validator');

exports.courseValidator = (req, res, next) => {
    req.check('name', 'Write a name').notEmpty();
    req.check('provider', 'Write a provider').notEmpty();
    req.check('price', 'Write a price').notEmpty();
    req.check('rate', 'Pick a rate').notEmpty();
    req.check('credits', 'Pick credits').notEmpty();
    req.check('image', 'Choose an image').notEmpty();
    // Check errors
    const errors = req.validationErrors()

    if (errors) {
        const firstError = errors.map((error) => error.msg)[0];
        return res.status(400).json({error: firstError});
    }


    next()
}