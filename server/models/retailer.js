module.exports = (sequelize, Sequelize) => {
    const Retailer = sequelize.define("retailer", {
        name: {
            type: Sequelize.STRING,
            required: true,
        }, 
        contact: {
            type: Sequelize.INTEGER
        },
        address: {
            type: Sequelize.STRING,
            required: true,
            unique: true
        },
        location: {
            type: Sequelize.STRING,
            required: true,
            unique: true
        },
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'retailer',
        timestamps: false,
        underscored: true
    },
    )
    return Retailer;
}