import Sequelize from 'sequelize'
import sequelize from './../connection'

let Banner = sequelize.define('banner', {
        title: {
            type: Sequelize.STRING(20),
        },
        url: {
            type: Sequelize.TEXT
        }
    }
);

export default Banner
