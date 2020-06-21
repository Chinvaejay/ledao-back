import Sequelize from 'sequelize'
import sequelize from './../connection'

let News = sequelize.define('news', {
        title: {
            type: Sequelize.STRING(20),
        },
        content: {
            type: Sequelize.TEXT
        },
        readCount: {
            type: Sequelize.INTEGER,
            allowNull: false,
            defaultValue: 0
        },
    }
);

export default News
