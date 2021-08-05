const { QueryTypes } = require('sequelize');
const db = require('../models');
module.exports={
    async getAllRetailer(req, res, next) {
        await db.sequelize.query(`select * from retailer `)
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
    async getSpecRetailer(req, res, next) {
        await db.sequelize.query(`select * from retailer where id = ${req.params.id}`)
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


   
    async addRetailer(req, res, next) {
        if (!req.body) {
            next();
        }
        const { name, contact,address,location} = req.body;
        await db.sequelize.query(`INSERT INTO retailer(name,contact,address,location) VALUES ('${name}','${contact}','${address}','${location}')`, { type: QueryTypes.INSERT })
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

};