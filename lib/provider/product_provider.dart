import 'package:flutter/material.dart';
import 'package:pos/models/product/category.dart';
import 'package:pos/models/product/department.dart';
import 'package:pos/models/product/product.dart';
import 'package:pos/models/product/retailer_bill.dart';

class ProductProvider extends ChangeNotifier {
  Product? product;
  RetailerBill? retailerBill;
  Department? department;
  Category? category;

  void setRetailerBillNo(String? billNo) {
    product!.retailerBillID!.add(billNo!);
    notifyListeners();
  }

  void setName(String? name) {
    product!.name = name;
    notifyListeners();
  }
}
