module.exports = (sequelize, Sequelize) => {
    const ProductSize = sequelize.define("product", {
        title: {
            type: Sequelize.STRING,
            required: true,
        },
      
        depID: {
            type: Sequelize.INTEGER,
            references: {
                model: 'department', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'productSize',
        timestamps: false,
        underscored: true
    },
    )
    return ProductSize;
}