import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';

class EditRetailerBillScreen extends StatelessWidget {
  const EditRetailerBillScreen({Key? key}) : super(key: key);
  static const String routeName = '/EditRetailerBillScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Edit Retailer Bill'),
    );
  }
}
