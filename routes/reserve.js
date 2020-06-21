var express = require('express');
var router = express.Router();
import ReserveController from "../controller/ReserveController";

/* GET users listing. */
router.post('/delReserve', ReserveController.delReserve);
router.get('/getReserveList', ReserveController.getReserveList);

module.exports = router;
