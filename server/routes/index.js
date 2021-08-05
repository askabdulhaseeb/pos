var express = require('express');
const authController = require('../controllers/authentication');
const userController =  require('../controllers/user');
const retailerController = require('../controllers/retailer');
const retailerBillController =  require('../controllers/retailerBill');
const stuffController = require('../controllers/stuff');
const jwtVerify = require('../controllers/authenticateToken');

var router = express.Router();


router.post('/register',authController.register);
router.post('/login',authController.login);

//                                                  User Data
router.get('/getAllUser',jwtVerify.authenticateToken,userController.getAllUser);
router.get('/getDesUser/:id',jwtVerify.authenticateToken,userController.getDesUser);
// router.get('/getSearchUser/:name',jwtVerify.authenticateToken,userController.getSearchUser);


//                                              Retailer Data
router.post('/addRetailer',jwtVerify.authenticateToken,retailerController.addRetailer);
router.get('/getAllRetailer',jwtVerify.authenticateToken,retailerController.getAllRetailer);
router.get('/getSpecRetail/:id',jwtVerify.authenticateToken,retailerController.getSpecRetailer);


//                                                  Retailer Bill
router.post('/addRetailerBill',jwtVerify.authenticateToken,retailerBillController.addRetailerBill);
router.get('/getAllRetailerBill',jwtVerify.authenticateToken,retailerBillController.getAllRetailerBill);
router.get('/getSpecRetailerBill/:id',jwtVerify.authenticateToken,retailerBillController.getSpecRetailerBill);

//                                                      Stuff

router.post('/addStuff',jwtVerify.authenticateToken,stuffController.addStuff);
router.get('/getAllRetailerBill',jwtVerify.authenticateToken,stuffController.getAllStuff);
router.get('/getSpecRetailerBill/:id',jwtVerify.authenticateToken,stuffController.getSpecStuff);

module.exports = router;
