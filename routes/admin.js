var express = require('express');
var router = express.Router();
import AdminController from "../controller/AdminController";

/* GET users listing. */
router.post('/login', AdminController.login);

module.exports = router;
