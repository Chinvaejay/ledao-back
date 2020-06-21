var express = require('express');
var router = express.Router();
import NewsController from "../controller/NewsController";

/* GET users listing. */
router.post('/delNews', NewsController.delNews);
router.post('/publishNews', NewsController.publishNews);
router.get('/getNewsList', NewsController.getNewsList);
router.get('/getNewsInfo', NewsController.getNewsInfo);

module.exports = router;
