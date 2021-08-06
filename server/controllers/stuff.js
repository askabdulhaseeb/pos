const { QueryTypes } = require('sequelize');
const db = require('../models');
module.exports={
    async getAllStuff(req, res, next) {
        await db.sequelize.query(`select * from stuff`)
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
    async getSpecStuff(req, res, next) {
        await db.sequelize.query(`select * from stuff where id = ${req.params.id}`)
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


   
    async addStuff(req, res, next) {
        if (!req.body) {
            next();
        }
        const {title} = req.body;
        await db.sequelize.query(`INSERT INTO stuff(title) VALUES ('${title}')`, { type: QueryTypes.INSERT })
        .then(async (users) => {
                console.log(users)
                if (users) {
                    return res.status(200).json({
                        message: 'Successfully Added',
                    });
                } else {
                    return res.status(400).json('Error in insert new record');
                }
            }).catch(err => {
                console.log(err);
                next();
            })
    }, 
    async getSearchStuffByTitle(req, res, next) {
        await db.sequelize.query(`SELECT * FROM stuff where title Like '${req.params.title}%' LIMIT ${req.params.limit1},${req.params.limit2} `)
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