module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define("user", {
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
        desId: {
            type: Sequelize.INTEGER,
            references: {
                model: 'designation', // 'fathers' refers to table name
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
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'users',
        timestamps: false,
        underscored: true
    },
    )
    return User;
}