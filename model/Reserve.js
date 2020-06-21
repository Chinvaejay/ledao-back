import Sequelize from 'sequelize'
import sequelize from './../connection'

let Reserve = sequelize.define('reserve', {
        username: {
            type: Sequelize.TEXT
        },
        tel: {
            type: Sequelize.TEXT
        },
        reserve: {
            type: Sequelize.TEXT
        },
        date: {
            type: Sequelize.TEXT
        },
        type: {
            type: Sequelize.INTEGER
        },
        
    }
);

export default Reserve
