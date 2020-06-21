var express = require('express');
var router = express.Router();
import CenterController from "../controller/CenterController";

/* GET users listing. */
router.post('/addCenter', CenterController.addCenter);
router.post('/delCenter', CenterController.delCenter);
router.get('/getCenterList', CenterController.getCenterList);

module.exports = router;
