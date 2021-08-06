module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define("product", {
        name: {
            type: Sequelize.STRING,
            required: true,
        },
        retailPrice:{
            type: Sequelize.INTEGER,
        },
        salePrice:{
            type: Sequelize.INTEGER,
        },
        shopQty:{
            type: Sequelize.INTEGER,
        },
        storeQty:{
            type: Sequelize.INTEGER,
        },
        barcode: {
            type: Sequelize.STRING,
            required: true,
            unique: true
        },
        size_id:{
            type: Sequelize.INTEGER,
        },
        retailer_bill_id: {
            type: Sequelize.INTEGER,
            references: {
                model: 'retailerBill', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
        dep_id: {
            type: Sequelize.INTEGER,
            references: {
                model: 'department', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
        cat_id: {
            type: Sequelize.INTEGER,
            references: {
                model: 'category', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
      
        stuff_id: {
            type: Sequelize.INTEGER,
            references: {
                model: 'stuff', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
      
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'product',
        timestamps: false,
        underscored: true
    },
    )
    return Product;
}