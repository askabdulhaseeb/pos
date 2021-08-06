module.exports = (sequelize, Sequelize) => {
    const Category = sequelize.define("category", {
        title: {
            type: Sequelize.STRING,
            required: true,
        },
      
        dep_id: {
            type: Sequelize.INTEGER,
            references: {
                model: 'department', // 'fathers' refers to table name
                key: 'id', // 'id' refers to column name in fathers table
            }
        },
    }, {
        sequelize,
        freezeTableName: true,
        tableName: 'Category',
        timestamps: false,
        underscored: true
    },
    )
    return Category;
}