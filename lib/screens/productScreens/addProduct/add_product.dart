import 'package:flutter/material.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';
import 'package:pos/utilities/utilities.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/AddProductScreen';
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Add Product'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utilities.padding),
        child: Form(
          key: _globalKey,
          child: Wrap(
            direction: Axis.vertical,
            children: <Widget>[],
          ),
        ),
      ),
    );
  }
}
