import Sequelize from 'sequelize'
const sequelize = new Sequelize('ledao', 'root', '123456', {
    host: 'localhost',
    dialect: 'mysql',
    timezone: '+08:00' //东八时区
});

sequelize.authenticate().then(() => {
    console.log('mysql connection success.');
}).catch(err => {
    console.error('mysql connection error:', err);
});

export default sequelize
