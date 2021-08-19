import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/product/product.dart';

class ProductProvider extends ChangeNotifier {
  Product? product = Product();

  void clear() {
    product!.name = null;
    product!.barcode = null;
    product!.depID = null;
    product!.catID = null;
    product!.sizeID = null;
    product!.stuffID = null;
    product!.retailPrice = null;
    product!.salePrice = null;
    product!.shopQty = null;
    product!.storeQty = null;
    notifyListeners();
  }

  // product
  void setProductName(String? name) {
    product!.name = name;
    notifyListeners();
  }

  void setProductDepID(String? depID) {
    product!.depID = depID;
    notifyListeners();
  }

  void setProductCatID(String? catID) {
    product!.catID = catID;
    notifyListeners();
  }

  void autoBarcode() {
    product!.barcode =
        'BB${DateFormat('yy').format(DateTime.now())}${product!.depID}';
    notifyListeners();
  }

  void setProductBarcode(String? barcode) {
    product!.barcode = barcode;
    notifyListeners();
  }

  void setProductRetailerBillNo(String? billNo) {
    product!.retailerBillID!.add(billNo!);
    notifyListeners();
  }

  void setProductSizeID(String? sid) {
    product!.sizeID = sid;
    notifyListeners();
  }

  void setProductStuffID(String? stuff) {
    product!.stuffID = stuff;
    notifyListeners();
  }

  void setProductRetailerPrice(double? price) {
    product!.retailPrice = price;
    notifyListeners();
  }

  void setProductSalePrice(double? price) {
    product!.salePrice = price;
    notifyListeners();
  }

  void setProductShopQty(int? qty) {
    product!.shopQty = qty;
    notifyListeners();
  }

  void setProductStoreQty(int? qty) {
    product!.storeQty = qty;
    notifyListeners();
  }

  void setProductObject(Product? productObj) {
    product = productObj;
    notifyListeners();
  }
}
