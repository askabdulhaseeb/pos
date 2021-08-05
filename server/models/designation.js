module.exports = (sequelize, Sequelize) => {
    const Designation = sequelize.define("roll", {
        title: {
            type: Sequelize.STRING,
            unique:true,
            allowNull:false,
        },
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'designation',
        timestamps: false,
        underscored: true
    })
    return Designation;
}