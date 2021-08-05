module.exports = (sequelize, Sequelize) => {
    const Stuff = sequelize.define("stuff", {
        title: {
            type: Sequelize.STRING,
            required: true,
        },
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'stuff',
        timestamps: false,
        underscored: true
    },
    )
    return Stuff;
}