module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define("product", {
        name: {
            type: Sequelize.STRING,
            required: true,
        },
        password: {
            type: Sequelize.STRING,
            allowNull: false,
            required: true,
        },
        email: {
            type: Sequelize.STRING,
            unique: true,
            required: true,
            isEmail: true,
        },
        depID: {
            type: Sequelize.INTEGER,
            references: {
                model: 'department', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
        catID: {
            type: Sequelize.INTEGER,
            references: {
                model: 'category', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
        contactNo: {
            type: Sequelize.INTEGER
        },
        salary: {
            type: Sequelize.INTEGER,
            required: true,
        },
        barcode: {
            type: Sequelize.STRING,
            required: true,
            unique: true
        },
        retailerBillID:{
            type : Sequelize.NUMBER,
            required: true,
        },
        sid:{
            type: Sequelize.INTEGER,
        },
        stuff:{
            type: Sequelize.STRING
        },
        rid: {
            type: Sequelize.INTEGER,
            references: {
                model: 'retailer', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
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