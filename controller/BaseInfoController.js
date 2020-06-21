import Model from './../model'

class BaseInfoController {
    async getBaseInfo(req, res){
        let baseInfo = await Model.BaseInfo.findOne({
            where: {id: 1}
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                baseInfo: baseInfo || {
                    name: '',
                    boss: '',
                    email: '',
                    phone: '',
                    info: '',
                    qrCode: '',
                    weChat: '',
                    address: '',
                    id: 0,
                }
            }
        })
    }
    async saveBaseInfo(req, res){
        let {name, boss, email, phone, info, qrCode, weChat, address, id, adminId} = req.body;
        id = Number(id);
        let baseInfo = await Model.BaseInfo.findOne({
                where: {id: 1}
            });
        if(!baseInfo){
            baseInfo = await Model.BaseInfo.create({
                name, boss, email, phone, info, qrCode, weChat, address, adminId, id: 1
            })
        }else {
            baseInfo.name = name;
            baseInfo.boss = boss;
            baseInfo.email = email;
            baseInfo.phone = phone;
            baseInfo.info = info;
            baseInfo.qrCode = qrCode;
            baseInfo.weChat = weChat;
            baseInfo.address = address;
            await baseInfo.save();
        }
        res.json({
            code: 200,
            data: '保存成功'
        })
    }
}

export default new BaseInfoController();
