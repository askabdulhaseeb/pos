const { QueryTypes } = require('sequelize');
const db = require('../models');
module.exports={
    async getAllRetailerBill(req, res, next) {
        await db.sequelize.query(`select * from retailerBill`)
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
    async getSpecRetailerBill(req, res, next) {
        await db.sequelize.query(`select * from retailerBill where id = ${req.params.id}`)
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
    async addRetailerBill(req, res, next) {
        if (!req.body) {
            next();
        }
        const { name, bill_no,rid,total_amount,product_count,date} = req.body;
        await db.sequelize.query(`INSERT INTO retailerBill(name,bill_no,rid,total_amount,product_count,date) VALUES ('${name}','${bill_no}','${rid}','${total_amount}','${product_count}','${date}')`, { type: QueryTypes.INSERT })
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


    async getSearchRetailerBillByName(req, res, next) {
        await db.sequelize.query(`SELECT * FROM retailerBill where name Like '${req.params.name}%' LIMIT ${req.params.limit1},${req.params.limit2}`)
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
    async getSearchRetailerBillByBillNo(req, res, next) {
        
        await db.sequelize.query(`SELECT * FROM retailerBill where bill_no = ${req.params.billNo}`)
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