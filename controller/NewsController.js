import Model from './../model'

class NewsController {
    async delNews(req, res){
        let {id} = req.body;
        let news = await Model.News.findByPk(id);
        if(!news){
            return res.json({
                code: 500,
                data: '此新闻不存在'
            })
        }
        await news.destroy();
        res.json({
            code: 200,
            data: '删除成功'
        })
    }
    async publishNews(req, res){
        let {title, content, adminId} = req.body;
        let news = await Model.News.findOne({
            where: {
                title
            }
        });
        if(news){
            return res.json({
                code: 200,
                data: '同标题文章已存在'
            })
        }
        await Model.News.create({
            title, content, adminId
        });
        res.json({
            code: 200,
            data: '发布成功'
        })
    }
    async getNewsInfo(req, res){
        let {id} = req.query;
        let newsInfo = await Model.News.findByPk(id);
        if(!newsInfo){
            return res.json({
                code: 500,
                data: '此新闻不存在'
            })
        }
        newsInfo.readCount += 1;
        await newsInfo.save();
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                newsInfo
            }
        })
    }
    async getNewsList(req, res){
        let newsList = await Model.News.findAll({
            order: [
                ['id', 'DESC']
            ],
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                newsList
            }
        })
    }
}

export default new NewsController()
