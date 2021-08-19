import 'package:flutter/material.dart';
import '../../widgets/custom_appbar.dart';

class ViewRetailerBillScreen extends StatelessWidget {
  const ViewRetailerBillScreen({Key? key}) : super(key: key);
  static const String routeName = '/ViewRetailerBillScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'View Retailer Bill'),
    );
  }
}
