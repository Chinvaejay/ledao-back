import Model from "./../model";

class NewEnergyController {
    async getNewEnergy(req, res){
        let newEnergy = await Model.NewEnergy.findOne({
            where: {id: 1}
        });
        res.json({
            code: 200,
            data: '获取成功',
            result: {
                newEnergy: newEnergy || {
                    title: '',
                    content: ''
                }
            }
        })
    }
    async saveNewEnergy(req, res){
        let {title, content, adminId} = req.body;
        let newEnergy = await Model.NewEnergy.findOne({
            where: {id: 1}
        });
        if(!newEnergy){
            newEnergy = await Model.NewEnergy.create({
                title, content, adminId, id: 1
            })
        }else {
            newEnergy.title = title;
            newEnergy.content = content;
            await newEnergy.save();
        }
        res.json({
            code: 200,
            data: '保存成功'
        })
    }
}

export default new NewEnergyController()
