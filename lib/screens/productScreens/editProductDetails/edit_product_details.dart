import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';

class EditProductDetailsScreen extends StatelessWidget {
  const EditProductDetailsScreen({Key? key}) : super(key: key);
  static const String routeName = '/EditProductDetailsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Edit Product Detail'),
    );
  }
}
