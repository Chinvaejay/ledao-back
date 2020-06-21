import Model from "./../model";

class BannerController {
    async getBannerList(req, res){
        let bannerList = await Model.Banner.findAll({
            order: [
                ['id', 'DESC']
            ],
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                bannerList
            }
        })
    }
    async delBanner(req, res){
        let {id} = req.body;
        let banner = await Model.Banner.findByPk(id);
        if(!banner){
            return res.json({
                code: 500,
                data: '此记录不存在'
            })
        }
        await banner.destroy();
        res.json({
            code: 200,
            data: '删除成功'
        })
    }
    async addBanner(req, res){
        let {title, url, adminId} = req.body;
        let banner = await Model.Banner.findOne({
           where:{
               title
           }
        });
        if(banner){
            return res.json({
                code: 500,
                data: '已存在此标题'
            })
        }
        banner = await Model.Banner.create({
            title, url, adminId
        });
        res.json({
            code: 200,
            data: '添加成功',
            result: {
                banner
            }
        })
    }
}

export default new BannerController()
