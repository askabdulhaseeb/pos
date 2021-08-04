import 'package:flutter/material.dart';
import 'package:pos/models/product/department.dart';

class DepartmentProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  static List<Department> _dep = [
    const Department(title: 'Baba', depID: '1'),
    const Department(title: 'Baby', depID: '2'),
    const Department(title: 'Boy', depID: '3'),
    const Department(title: 'Girl', depID: '4'),
  ];
  void addDepartment({required Department dep}) {
    _dep.add(dep);
    notifyListeners();
  }

  List<Department> get departments => [..._dep];
}
