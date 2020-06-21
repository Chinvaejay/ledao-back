import Sequelize from 'sequelize'
import sequelize from './../connection'

let Center = sequelize.define('center', {
        title: {
            type: Sequelize.STRING(20),
        },
        url: {
            type: Sequelize.TEXT
        }
    }
);

export default Center
