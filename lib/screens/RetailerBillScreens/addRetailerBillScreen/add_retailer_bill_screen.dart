import 'package:flutter/material.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';

class AddRetailerBillScreen extends StatelessWidget {
  const AddRetailerBillScreen({Key? key}) : super(key: key);
  static const String routeName = '/AddRetailerBillScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Add Retailer Bill'),
    );
  }
}
