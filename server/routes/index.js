var express = require('express');
const authController = require('../controllers/authentication');
const userController =  require('../controllers/user');
const retailerController = require('../controllers/retailer');
const retailerBillController =  require('../controllers/retailerBill');
const stuffController = require('../controllers/stuff');
const jwtVerify = require('../controllers/authenticateToken');
const productController = require('../controllers/product');

var router = express.Router();


router.post('/register',authController.register);
router.post('/login',authController.login);

//                                                  User Data
router.get('/getAllUser',jwtVerify.authenticateToken,userController.getAllUser);
router.get('/getDesUser/:id',jwtVerify.authenticateToken,userController.getDesUser);
router.get('/getSearchUserByName/:name/:limit1/:limit2',jwtVerify.authenticateToken,userController.getSearchUserByName);
router.get('/getSearchUserByEmail/:email/:limit1/:limit2',jwtVerify.authenticateToken,userController.getSearchUserByEmail);
router.get('/getSearchUserBySalary/:name',jwtVerify.authenticateToken,userController.getSearchUserBySalary);


//                                              Retailer Data
router.post('/addRetailer',jwtVerify.authenticateToken,retailerController.addRetailer);
router.get('/getAllRetailer',jwtVerify.authenticateToken,retailerController.getAllRetailer);
router.get('/getSpecRetail/:id',jwtVerify.authenticateToken,retailerController.getSpecRetailer);
router.get('/getSearchRetailerByName/:name/:limit1/:limit2',jwtVerify.authenticateToken,retailerController.getSearchRetailerByName);
router.get('/getSearchUserByAddress/:address/:limit1/:limit2',jwtVerify.authenticateToken,retailerController.getSearchUserByAddress);


//                                                  Retailer Bill
router.post('/addRetailerBill',jwtVerify.authenticateToken,retailerBillController.addRetailerBill);
router.get('/getAllRetailerBill',jwtVerify.authenticateToken,retailerBillController.getAllRetailerBill);
router.get('/getSpecRetailerBill/:id',jwtVerify.authenticateToken,retailerBillController.getSpecRetailerBill);

//                                                      Stuff

router.post('/addStuff',jwtVerify.authenticateToken,stuffController.addStuff);
router.get('/getAllRetailerBill',jwtVerify.authenticateToken,stuffController.getAllStuff);
router.get('/getSpecRetailerBill/:id',jwtVerify.authenticateToken,stuffController.getSpecStuff);
router.get('/getSearchStuffByTitle/:title/:limit1/:limit2',jwtVerify.authenticateToken,stuffController.getSearchStuffByTitle);


//                                                          Product
router.post('/addProduct',jwtVerify.authenticateToken,productController.addProduct);


module.exports = router;
