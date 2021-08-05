const bcrypt = require('bcrypt');
const saltRounds = 10;
const { QueryTypes } = require('sequelize');
const db = require('../models');
const hashPassword = require('./hashPassword');
const jwt = require('json-web-token');
const token = require('./authenticateToken');
// const User = require('../models/user');
module.exports = {
    async register(req, res, next) {
        if (!req.body) {
            next();
        }
        const { name, password, email,desId,contactNo,salary} = req.body;
        const pass = await hashPassword.hashPassword(password);
        await db.sequelize.query(`INSERT INTO users(name,password, email, des_id,contact_no,salary) VALUES ('${name}','${pass}','${email}','${desId}','${contactNo}','${salary}')`, { type: QueryTypes.INSERT })
        .then(async (users) => {
                console.log(users)
                if (users) {
                    const accessToken = await token.generateAccessToken(email);
                    return res.status(200).json({
                        message: 'Successfully Created',
                        email: email,
                        token: accessToken,
                        isToken:true,
                    });
                } else {
                    return res.status(400).json('Error in insert new record');
                }
            }).catch(err => {
                console.log(err);
                next();
            })
    },
    async login(req, res, next) {
        console.log(req.body);
        if (!req.body) {
            next();
        }
        const { email, password } = req.body;
        await db.sequelize.query(`select email,password from users where email = '${email}'`, { type: QueryTypes.SELECT })
            .then(async (users) => {
                console.log("Roll Data ",users," users[0].password ",users[0].password);

                if (users) {
                    bcrypt.compare(password, users[0].password, async function (err, result) {
                        if (result) {
                            const accessToken = await token.generateAccessToken(email);
                            return res.status(200).json({
                                message: 'Successfully Login',
                                email: users[0].email,
                                isToken:true,
                                token: accessToken
                            });
                        } else {
                            return res.json({
                                message: 'Login Error! Invalid Password',
                            });
                            next();
                        }
                    });
                }
            }).catch(err => {
                return res.json({
                    message: 'Login Error! Invalid Email',
                });
            })
    },
    async updateUserData(req,res,next){
        console.log(req.body);
        const {phone,age,city,isVaccinated,roll} = req.body;
    }

}
