var express = require('express');
const authController = require('../controllers/authentication');
const userController =  require('../controllers/user');
const retailerController = require('../controllers/retailer');
const retailerBillController =  require('../controllers/retailerBill');
const jwtVerify = require('../controllers/authenticateToken');

var router = express.Router();


router.post('/register',authController.register);
router.post('/login',authController.login);

//                                                  User Data
router.get('/getAllUser',userController.getAllUser);
router.get('/getDesUser/:id',userController.getDesUser);


//                                              Retailer Data
router.post('/addRetailer',retailerController.addRetailer);
router.get('/getAllRetailer',retailerController.getAllRetailer);
router.get('/getSpecRetail/:id',retailerController.getSpecRetailer);


//                                                  Retailer Bill
router.post('/addRetailerBill',retailerBillController.addRetailerBill);
router.get('/getAllRetailerBill',retailerBillController.getAllRetailerBill);
router.get('/getSpecRetailerBill/:id',retailerBillController.getSpecRetailerBill);


module.exports = router;
