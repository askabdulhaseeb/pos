import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';

class PrintBarcodeScreen extends StatelessWidget {
  const PrintBarcodeScreen({Key? key}) : super(key: key);
  static const String routeName = '/PrintBarcodeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Print Barcode'),
    );
  }
}
