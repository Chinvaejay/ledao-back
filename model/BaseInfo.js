import Sequelize from 'sequelize'
import sequelize from './../connection'

let BaseInfo = sequelize.define('baseInfo', {
        name: {
            type: Sequelize.STRING(20),
        },
        boss: {
            type: Sequelize.STRING(20),
        },
        email: {
            type: Sequelize.STRING(50),
        },
        phone: {
            type: Sequelize.STRING(11),
        },
        info: {
            type: Sequelize.STRING(500),
        },
        qrCode: {
            type: Sequelize.TEXT,
        },
        weChat: {
            type: Sequelize.STRING(20),
        },
        address: {
            type: Sequelize.STRING(200),
        },
    }
);

export default BaseInfo
