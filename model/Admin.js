import Sequelize from 'sequelize'
import sequelize from './../connection'

let Admin = sequelize.define('admin', {
        admin: {
            type: Sequelize.STRING(20),
            allowNull: false,
            unique: true
        },
        password: {
            type: Sequelize.STRING(80),
            allowNull: false
        }
    }
);

export default Admin
