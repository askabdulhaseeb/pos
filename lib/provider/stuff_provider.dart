import 'package:flutter/material.dart';
import '../models/product/stuff.dart';

class StuffProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  static List<Stuff> _stuff = <Stuff>[
    Stuff(depID: '1', id: '11', title: 'Winter'),
    Stuff(depID: '1', id: '12', title: 'Summar'),
    //
    Stuff(depID: '2', id: '11', title: 'Winter'),
    Stuff(depID: '2', id: '12', title: 'Summar'),
    //
    Stuff(depID: '3', id: '11', title: 'Winter'),
    Stuff(depID: '3', id: '12', title: 'Summar'),
    //
    Stuff(depID: '4', id: '11', title: 'Winter'),
    Stuff(depID: '4', id: '12', title: 'Summar'),
  ];

  List<Stuff> stuff({required String? depID}) {
    // ignore: prefer_final_locals
    List<Stuff> _temp = <Stuff>[];
    _temp.addAll(_stuff.where((Stuff element) => element.depID == depID));
    return _temp;
  }
}
