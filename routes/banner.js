var express = require('express');
var router = express.Router();
import BannerController from "../controller/BannerController";

/* GET users listing. */
router.post('/addBanner', BannerController.addBanner);
router.post('/delBanner', BannerController.delBanner);
router.get('/getBannerList', BannerController.getBannerList);

module.exports = router;
