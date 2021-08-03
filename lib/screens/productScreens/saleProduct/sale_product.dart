import 'package:flutter/material.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';

class SaleProductScreen extends StatelessWidget {
  const SaleProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/SaleProductScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Sale Product'),
    );
  }
}
