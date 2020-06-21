import Sequelize from 'sequelize'
import sequelize from './../connection'

let About = sequelize.define('about', {
        title: {
            type: Sequelize.STRING(20),
        },
        url: {
            type: Sequelize.TEXT
        }
    }
);

export default About
