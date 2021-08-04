import 'package:flutter/material.dart';
import 'package:pos/models/product/retailer_bill.dart';

class RetailerBillNoProvider extends ChangeNotifier {
  void addBill(RetailerBill newBill) {
    // Save Bill in Database
  }

  RetailerBill? searchBill({required String billNo}) {
    RetailerBill? _bill;
    // Search Bill From Database
    return _bill;
  }

  void updateBill({required RetailerBill updatedBill}) {
    // Update Bill in Database
    // if Admin Allow
  }
}
