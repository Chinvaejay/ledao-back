import Model from "./../model";

class CenterController {
    async addCenter(req, res){
        let {title, url, adminId} = req.body;
        let center = await Model.Center.findOne({
            where:{
                title
            }
        });
        if(center){
            return res.json({
                code: 500,
                data: '已存在此记录'
            })
        }
        center = await Model.Center.create({
            title, url, adminId
        });
        res.json({
            code: 200,
            data: '添加成功',
            result: {
                center
            }
        })
    }
    async delCenter(req, res){
        let {id} = req.body;
        let center = await Model.Center.findByPk(id);
        if(!center){
            return res.json({
                code: 500,
                data: '此记录不存在'
            })
        }
        await center.destroy();
        res.json({
            code: 200,
            data: '删除成功'
        })
    }
    async getCenterList(req, res){
        let centerList = await Model.Center.findAll({
            order: [
                ['id', 'DESC']
            ],
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                centerList
            }
        })
    }
}

export default new CenterController()
