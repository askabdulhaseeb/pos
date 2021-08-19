import 'package:flutter/material.dart';
import '../models/product/department.dart';

class DepartmentProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  static List<Department> _dep = <Department>[
    Department(title: 'Baba', depID: '1'),
    Department(title: 'Baby', depID: '2'),
    Department(title: 'Boy', depID: '3'),
    Department(title: 'Girl', depID: '4'),
  ];
  void addDepartment({required Department dep}) {
    _dep.add(dep);
    notifyListeners();
  }

  List<Department> get departments => <Department>[..._dep];
}
