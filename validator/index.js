// Dependencies required
const { check, validationResult } = require('express-validator');

// Export validations for request data
exports.courseValidator = (req, res, next) => {
    req.check('name', 'Write a name').exists();
    req.check('provider', 'Write a provider').exists();
    req.check('price', 'Write a price').exists();
    req.check('rate', 'Pick a rate').exists();
    req.check('credits', 'Pick credits').exists();
    req.check('image', 'Choose an image').exists();
    // Check errors
    const errors = req.validationErrors()

    if (errors) {
        const firstError = errors.map((error) => error.msg)[0];
        return res.status(400).json({error: firstError});
    }


    next()
}

exports.userValidator = (req, res, next) => {
    req.check('username', 'Write a username').exists();
    req.check('password', 'Write a password').exists();
    req.check('confirm_password', 'Password and password confirmation dont match')
    .exists()
    .custom((value) => value === req.body.password)

    const errors = req.validationErrors()

    if (errors) {
        const firstError = errors.map((error) => error.msg)[0];
        return res.status(400).json({error: firstError});
    }


    next()
}

exports.loginValidator = (req, res, next) => {

    req.check('username', 'Write a username').exists();
    req.check('password', 'Write a password').exists();
    
    const errors = req.validationErrors()

    if (errors) {
        const firstError = errors.map((error) => error.msg)[0];
        return res.status(400).json({error: firstError});
    }


    next()
}