var express = require('express');
var router = express.Router();
import AboutController from "../controller/AboutController";

/* GET users listing. */
router.post('/addAbout', AboutController.addAbout);
router.post('/delAbout', AboutController.delAbout);
router.get('/getAboutList', AboutController.getAboutList);

module.exports = router;
