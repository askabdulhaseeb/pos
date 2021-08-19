import 'package:flutter/material.dart';
import '../models/user/stoff.dart';

class StoffProvider extends ChangeNotifier {
  // ignore: prefer_final_fields
  static List<Stoff> _stoff = <Stoff>[
    Stoff(uid: '111', name: 'Ali'),
    Stoff(uid: '112', name: 'Hamza'),
    Stoff(uid: '113', name: 'Uzair'),
  ];
  List<Stoff> get stoff => <Stoff>[..._stoff];
}
