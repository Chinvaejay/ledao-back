var express = require('express');
var router = express.Router();
import BaseInfoController from "../controller/BaseInfoController";

/* GET users listing. */
router.get('/getBaseInfo', BaseInfoController.getBaseInfo)
router.post('/saveBaseInfo', BaseInfoController.saveBaseInfo)
module.exports = router;
