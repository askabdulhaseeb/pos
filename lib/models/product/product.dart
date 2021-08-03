import 'package:pos/models/product/category.dart';
import 'package:pos/models/product/department.dart';
import 'package:pos/models/product/product_size.dart';
import 'package:pos/models/product/retailer.dart';

class Product {
  Product({
    required this.name,
    required this.depID,
    required this.catID,
    required this.barcode,
    required this.retailerBillID,
    required this.sid,
    required this.stuff,
    required this.rid,
    required this.retailPrice,
    required this.salePrice,
    required this.shopQty,
    required this.storeQty,
  });
  final String name;
  final String depID; // Department ID
  final String catID; // Category ID
  final String barcode; // Auto OR Manual
  final List<String> retailerBillID;
  final String sid; // Product Size ID
  final String stuff;
  final List<String> rid; // Retailer ID
  final double retailPrice;
  final double salePrice; // should be grater then retail price
  final int shopQty;
  final int storeQty;
}
