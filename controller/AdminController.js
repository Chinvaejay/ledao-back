import Model from "./../model";

class AdminController {
    async login(req, res, next){
        let {admin, password} = req.body;
        let data = await Model.Admin.findOne({
            where: {admin, password}
        });
        if(!data){
            return res.json({
                code: 500,
                data: '账号或密码错误'
            })
        }
        res.json({
            code: 200,
            result: {
                adminInfo: data
            }
        })
    }
}

export default new AdminController()
