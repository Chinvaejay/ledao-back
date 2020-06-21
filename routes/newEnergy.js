var express = require('express');
var router = express.Router();
import NewEnergyController from "../controller/NewEnergyController";

/* GET users listing. */
router.get('/getNewEnergy', NewEnergyController.getNewEnergy)
router.post('/saveNewEnergy', NewEnergyController.saveNewEnergy)
module.exports = router;
