import Sequelize from 'sequelize'
import sequelize from './../connection'

let NewEnergy = sequelize.define('newEnergy', {
        title: {
            type: Sequelize.STRING(20),
        },
        content: {
            type: Sequelize.TEXT
        }
    }
);

export default NewEnergy
