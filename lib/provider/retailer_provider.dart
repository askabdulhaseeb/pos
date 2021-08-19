import 'package:flutter/material.dart';
import '../models/product/retailer.dart';
import '../models/product/retailer_bill.dart';

class RetailerProvider extends ChangeNotifier {
  Retailer? retailer = Retailer();
  RetailerBill? retailerBill = RetailerBill();

  bool addRetailer(Retailer? ret) {
    // TODO: add retailer and check is added or not
    return false;
  }

  void addBill(RetailerBill? newBill) {
    //TODO: Save Bill in Database
  }

  bool searchBill({required String? billNo}) {
    retailer!.name = 'Fake Retailer';
    notifyListeners();
    return true;
  }

  void updateBill({required RetailerBill? updatedBill}) {
    //TODO: Update Bill in Database
    //TODO: if Admin Allow
  }
}
