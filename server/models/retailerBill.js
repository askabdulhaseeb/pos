module.exports = (sequelize, Sequelize) => {
    const RetailerBill = sequelize.define("retailerBill", {
        name: {
            type: Sequelize.STRING,
            required: true,
        },
        billNo: {
            type: Sequelize.INTEGER,
            required: true,
        },
        rid: {
            type: Sequelize.INTEGER,
            references: {
                model: 'retailer', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
        totalAmount:{
            type: Sequelize.INTEGER,
        },        
        productCount:{
            type: Sequelize.INTEGER,
        },  
        date:{
            type: Sequelize.DATE,
        }
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'retailerBill',
        timestamps: false,
        underscored: true
    },
    )
    return RetailerBill;
}