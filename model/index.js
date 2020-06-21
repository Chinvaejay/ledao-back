import sequelize from "../connection";

import Admin from "./Admin";
import Reserve from "./Reserve";
import About from "./About";
import Banner from "./Banner";
import BaseInfo from "./BaseInfo";
import Center from "./Center";
import Eg from "./Eg";
import NewEnergy from "./NewEnergy";
import News from "./News";

//Admin <发布> About 1:n
Admin.hasMany(About);
About.belongsTo(Admin);
//Admin <发布> Banner 1:n
Admin.hasMany(Banner);
Banner.belongsTo(Admin);
//Admin <发布> BaseInfo 1:n
Admin.hasMany(BaseInfo);
BaseInfo.belongsTo(Admin);
//Admin <发布> Center 1:n
Admin.hasMany(Center);
Center.belongsTo(Admin);
//Admin <发布> Eg 1:n
Admin.hasMany(Eg);
Eg.belongsTo(Admin);
//Admin <发布> NewEnergy 1:n
Admin.hasMany(NewEnergy);
NewEnergy.belongsTo(Admin);
//Admin <发布> News 1:n
Admin.hasMany(News);
News.belongsTo(Admin);
//Admin <发布> Reserve 1:n
Admin.hasMany(Reserve);
Reserve.belongsTo(Admin);

/*强制重构表*/
// sequelize.sync({force: true}).then(d=> {
  //   console.log('所有表初始化完成，所有表已重构。');
 //});
/*同步最新的模型到数据库*/
// sequelize.sync({alter: true}).then(d=> {
//     console.log('同步所有表最新的模型到数据库，数据保留。');
// });

export default {
    Admin, About, Banner, BaseInfo, Center, Eg, NewEnergy, News, Reserve
}
