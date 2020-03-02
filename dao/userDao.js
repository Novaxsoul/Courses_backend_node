// Dependencies and files required
const models = require('../models')
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken')
const config = require('../config/config')

// Class to map the User table
class UserDAO {
    // Method to register an user
    registerUser(req, res){
        // Encrypt the password
        const hash = bcrypt.hashSync(req.body.password, 10);
        // Create and save the user
        models.User.build(
            Object.assign(req.body, {password: hash})
        ).save()
        .then(result => {
            res.json({result: "User register successfully"})
        })
        .catch(err =>{
            res.json({error: err})
        })
    }
    // Method for login
    login(req, res){
        // Find the user with the incoming username
        models.User.findOne({where: {username: req.body.username}}).then(user => {

            // If the user doesn't exists
            if(user === null){
                res.status(400).json({error: 'User not found'})
            }

            // If the passwords don't match
            if (!bcrypt.compareSync(req.body.password, user.password)) {
                res.status(401).json({error: 'Invalid password'})
            } else {
                // If the login was successfully create a Token for the user
                let payload =  {
                    sub: user.username
                }
                let token = jwt.sign(payload, config.skey)
                res.json({
                    username: user.username,
                    token: token
                })
            }
        }).catch(err => {
            res.status(400).json({error: err.message})
        })
    }
}

// Exports the class
module.exports = UserDAO