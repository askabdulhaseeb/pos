module.exports = (sequelize, Sequelize) => {
    const Department = sequelize.define("department", {
        title: {
            type: Sequelize.STRING,
            required: true,
        },
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'Department',
        timestamps: false,
        underscored: true
    },
    )
    return Department;
}