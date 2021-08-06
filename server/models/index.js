const dbConfig = require('../db.config');
const Sequelize = require('sequelize');
const sequelize = new Sequelize(dbConfig.DB,dbConfig.USER,dbConfig.PASSWORD,{
    host:dbConfig.HOST,
    dialect:dbConfig.dialect,
    operatorsAliases: false,
});
const db = {};
db.sequelize = Sequelize;
db.sequelize = sequelize;

db.roll = require('./designation')(sequelize,Sequelize);
db.user = require('./user')(sequelize,Sequelize);
db.retailer = require('./retailer')(sequelize,Sequelize);
db.retailerBill = require('./retailerBill')(sequelize,Sequelize);
db.stuff = require('./stuff')(sequelize,Sequelize);
db.department = require('./department')(sequelize,Sequelize);
db.designation = require('./designation')(sequelize,Sequelize);
db.category = require('./category')(sequelize,Sequelize);
db.productSize = require('./productSize')(sequelize,Sequelize);
db.product = require('./product')(sequelize,Sequelize);


module.exports = db;