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

};