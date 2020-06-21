import Sequelize from 'sequelize'
import sequelize from './../connection'

let Eg = sequelize.define('eg', {
        title: {
            type: Sequelize.STRING(20),
        },
        url: {
            type: Sequelize.TEXT
        }
    }
);

export default Eg
