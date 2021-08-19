import 'package:flutter/material.dart';
import '../models/product/product_size.dart';

class SizeProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  static late List<ProductSize>? _size = <ProductSize>[
    ProductSize(catID: '11', sid: '1', title: 'S'),
    ProductSize(catID: '11', sid: '2', title: 'M'),
    ProductSize(catID: '11', sid: '3', title: 'L'),
    ProductSize(catID: '11', sid: '4', title: 'XL'),
    //
    ProductSize(catID: '12', sid: '5', title: 'S'),
    ProductSize(catID: '12', sid: '6', title: 'M'),
    ProductSize(catID: '12', sid: '7', title: 'L'),
    ProductSize(catID: '12', sid: '8', title: 'XL'),
    //
    ProductSize(catID: '21', sid: '9', title: 'S'),
    ProductSize(catID: '21', sid: '10', title: 'M'),
    ProductSize(catID: '21', sid: '11', title: 'L'),
    ProductSize(catID: '21', sid: '12', title: 'XL'),
    //
    ProductSize(catID: '31', sid: '111', title: 'S'),
    ProductSize(catID: '32', sid: '21', title: 'M'),
    ProductSize(catID: '33', sid: '31', title: 'L'),
    ProductSize(catID: '34', sid: '41', title: 'XL'),
    //
  ];

  List<ProductSize> size(String? catID) {
    // ignore: prefer_final_locals
    List<ProductSize> _temp = <ProductSize>[];
    _temp.addAll(_size!.where((ProductSize element) => element.catID == catID));
    return _temp;
  }
}
