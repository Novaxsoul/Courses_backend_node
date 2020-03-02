const jwt = require('jsonwebtoken')
const config = require('../config/config')

// Authentication filter
exports.jwtfilter = (req, res, next) => {
    // Get the token from the headers
    let token = req.headers.authorization

    // If the token exists
    if(token){
        // Split the token to get only the token value (Example: Bearer 12345, so we will only take 12345)
        token = token.split(' ')[1]
        // Verify the token
        jwt.verify(token, config.skey, (err, decoded) => {
            if(err) {
                return res.status(400).json({error: 'Invalid token'})
            } else {
                req.decoded = decoded
                next()
            }
        })
    } else {
        res.status(401).json({error: 'Unauthorized'})
    }
}