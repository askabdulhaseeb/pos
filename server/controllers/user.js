const { QueryTypes } = require('sequelize');
const db = require('../models');
module.exports={
    async getAllUser(req, res, next) {
        await db.sequelize.query(`select * from users as u inner join designation`)
            .then(records => {
                console.log("Check Data ", records);
                return res.status(200).json({
                    message: 'Successfully Fetched',
                    records: records,
                    id: req.params.id,
                });
            }).catch((err) => {
                console.log(err);
                next();
            })
    }, 
    async getDesUser(req, res, next) {
        await db.sequelize.query(`select * from users as u inner join designation where u.des_id = ${req.params.id}`)
            .then(records => {
                console.log("Check Data ", records);
                return res.status(200).json({
                    message: 'Successfully Fetched',
                    records: records,
                    id: req.params.id,
                });
            }).catch((err) => {
                console.log(err);
                next();
            })
    },
    async getSearchUserByName(req, res, next) {
        await db.sequelize.query(`SELECT * FROM users where name Like '${req.params.name}%' LIMIT ${req.params.limit1},${req.params.limit2}`)
            .then(records => {
                return res.status(200).json({
                    message: 'Successfully Fetched',
                    records: records,
                });
            }).catch((err) => {
                console.log(err);
                next();
            })
    }, 
    async getSearchUserByEmail(req, res, next) {
        
        await db.sequelize.query(`SELECT * FROM users where email Like '${req.params.email}%' LIMIT ${req.params.limit1},${req.params.limit2} `)
            .then(records => {
                return res.status(200).json({
                    message: 'Successfully Fetched',
                    records: records,
                });
            }).catch((err) => {
                console.log(err);
                next();
            })
    },
    async getSearchUserBySalary(req, res, next) {
        await db.sequelize.query(`SELECT * FROM users where Salary = ${req.params.name}`)
            .then(records => {
                return res.status(200).json({
                    message: 'Successfully Fetched',
                    records: records,
                });
            }).catch((err) => {
                console.log(err);
                next();
            })
    },

};