// Dependencies and files required
const UserDAO = require('../dao/userDao')

// Create a userDao object
const userDao = new UserDAO()

//Exports the methods for register and login an user
exports.registerUser = (req, res) => {
    res = userDao.registerUser(req, res)
}

exports.login = (req,res) => {
    res = userDao.login(req, res)
}
