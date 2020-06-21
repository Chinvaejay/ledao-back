var express = require('express');
var router = express.Router();
import EgController from "../controller/EgController";

/* GET users listing. */
router.post('/addEg', EgController.addEg);
router.post('/delEg', EgController.delEg);
router.get('/getEgList', EgController.getEgList);

module.exports = router;
