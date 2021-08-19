import 'package:flutter/material.dart';
import '../models/product/category.dart';

class CategoryProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  static List<Category> _cat = <Category>[
    Category(title: 'Baba Shirt', catID: '11', depID: '1'),
    Category(title: 'Baba Pent', catID: '12', depID: '1'),
    Category(title: 'Baba Suit', catID: '13', depID: '1'),
    Category(title: 'Baba Kurta Salvar', catID: '14', depID: '1'),
    Category(title: 'Baby Shirt', catID: '21', depID: '2'),
    Category(title: 'Baby Pent', catID: '22', depID: '2'),
    Category(title: 'Baby Suit', catID: '23', depID: '2'),
    Category(title: 'Baby Kurta Salvar', catID: '24', depID: '2'),
    Category(title: 'Boy Shirt', catID: '31', depID: '3'),
    Category(title: 'Boy Pent', catID: '32', depID: '3'),
    Category(title: 'Boy Suit', catID: '33', depID: '3'),
    Category(title: 'Boy Kurta Salvar', catID: '34', depID: '3'),
    Category(title: 'Girl Shirt', catID: '41', depID: '4'),
    Category(title: 'Girl Pent', catID: '42', depID: '4'),
    Category(title: 'Girl Suit', catID: '43', depID: '4'),
    Category(title: 'Girl Kurta Salvar', catID: '44', depID: '4'),
  ];

  void addCategory(Category cat) {
    _cat.add(cat);
    notifyListeners();
  }

  List<Category> categoriesOfSpecificDepartment(String? depID) {
    try {
      final List<Category> _newList = <Category>[];
      _newList.addAll(_cat.where((Category e) => e.depID == depID));
      return _newList;
    } catch (e) {
      return <Category>[];
    }
  }

  List<Category> get allCategories => <Category>[..._cat];
}
