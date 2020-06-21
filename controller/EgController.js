import Model from './../model'

class EgController {
    async addEg(req, res){
        let {title, url, adminId} = req.body;
        let eg = await Model.Eg.findOne({
            where:{
                title
            }
        });
        if(eg){
            return res.json({
                code: 500,
                data: '已存在此记录'
            })
        }
        eg = await Model.Eg.create({
            title, url, adminId
        });
        res.json({
            code: 200,
            data: '添加成功',
            result: {
                eg
            }
        })
    }
    async delEg(req, res){
        let {id} = req.body;
        let eg = await Model.Eg.findByPk(id);
        if(!eg){
            return res.json({
                code: 500,
                data: '此记录不存在'
            })
        }
        await eg.destroy();
        res.json({
            code: 200,
            data: '删除成功'
        })
    }
    async getEgList(req, res){
        let egList = await Model.Eg.findAll({
            order: [
                ['id', 'DESC']
            ],
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                egList
            }
        })
    }
}

export default new EgController()
