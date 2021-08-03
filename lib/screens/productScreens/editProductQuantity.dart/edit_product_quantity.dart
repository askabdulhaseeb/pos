import 'package:flutter/material.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';

class EditProductQuantityScreen extends StatelessWidget {
  const EditProductQuantityScreen({Key? key}) : super(key: key);
  static const String routeName = '/EditProductQuantityScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Edit Product Quantity'),
    );
  }
}
