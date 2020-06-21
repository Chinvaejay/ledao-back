import Model from "./../model";

class AboutController {
    async addAbout(req, res){
        let {title, url, adminId} = req.body;
        let about = await Model.About.findOne({
            where:{
                title
            }
        });
        if(about){
            return res.json({
                code: 500,
                data: '已存在此记录'
            })
        }
        about = await Model.About.create({
            title, url, adminId
        });
        res.json({
            code: 200,
            data: '添加成功',
            result: {
                about
            }
        })
    }
    async delAbout(req, res){
        let {id} = req.body;
        let about = await Model.About.findByPk(id);
        if(!about){
            return res.json({
                code: 500,
                data: '此记录不存在'
            })
        }
        await about.destroy();
        res.json({
            code: 200,
            data: '删除成功'
        })
    }
    async getAboutList(req, res){
        let aboutList = await Model.About.findAll({
            order: [
                ['id', 'DESC']
            ],
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                aboutList
            }
        })
    }
}

export default new AboutController()
