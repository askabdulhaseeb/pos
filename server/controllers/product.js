const { QueryTypes } = require('sequelize');
const db = require('../models');
module.exports={
    async addProduct(req, res, next) {
        if (!req.body) {
            next();
        }
        const {name, retail_price,sale_price,shop_qty,store_qty,barcode,retailer_bill_id,dep_id,cat_id,stuff_id,size_id} = req.body;
        await db.sequelize.query(`INSERT INTO product(name, retail_price,sale_price,shop_qty,store_qty,barcode,retailer_bill_id,dep_id,cat_id,stuff_id,size_id) VALUES ('${name}','${retail_price}','${sale_price}','${shop_qty}','${store_qty}','${barcode}','${retailer_bill_id}','${dep_id}','${cat_id}','${stuff_id}','${size_id}')`, { type: QueryTypes.INSERT })
        .then(async (users) => {
                console.log(users)
                if (users) {
                    return res.status(200).json({
                        message: 'Successfully Inserted',
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