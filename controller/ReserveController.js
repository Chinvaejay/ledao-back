import Model from "./../model";

class ReserveController {
    async addReserve(req, res){
        // 0年检
        // 1过户
        // 2外迁
        // 3外转京
        let {username,tel,reserve,date, type} = req.body;
        console.log(req.body)
        let result = await Model.Reserve.create({
            username,tel,reserve,date,type
        });
        res.json({
            code: 200,
            data: '添加成功',
            result: {
                result
            }
        })
    }
    async delReserve(req, res){
        // 0年检
        // 1过户
        // 2外迁
        // 3外转京
        let {username,tel,reserve,date, type} = req.body;
        console.log(req.body)
        let result = await Model.Reserve.create({
            username,tel,reserve,date,type
        });
        res.json({
            code: 200,
            data: '添加成功',
            result: {
                result
            }
        })
    }
    async getReserveList(req, res){
        // 0年检
        // 1过户
        // 2外迁
        // 3外转京
       
        let reserveList = await Model.Reserve.findAll({
            order: [
                ['id', 'DESC']
            ],
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                reserveList
            }
        })
    }
}
export default new ReserveController()