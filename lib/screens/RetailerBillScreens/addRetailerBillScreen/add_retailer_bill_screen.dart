import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/models/product/retailer_bill.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';
import 'package:pos/screens/widgets/custom_dropdown_button.dart';
import 'package:pos/screens/widgets/custom_inkwell_button.dart';
import 'package:pos/screens/widgets/custom_textformfield.dart';
import 'package:pos/utilities/utilities.dart';

class AddRetailerBillScreen extends StatefulWidget {
  const AddRetailerBillScreen({Key? key}) : super(key: key);
  static const String routeName = '/AddRetailerBillScreen';
  @override
  _AddRetailerBillScreenState createState() => _AddRetailerBillScreenState();
}

class _AddRetailerBillScreenState extends State<AddRetailerBillScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final RetailerBill _bill = RetailerBill();
  @override
  void initState() {
    _bill.date = DateFormat('dd-MM-yyyy').format(DateTime.now());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Add Retailer Bill'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utilities.padding),
        child: Form(
          key: _globalKey,
          child: Wrap(
            direction: Axis.vertical,
            children: <Widget>[
              Text(
                '  Date: ${_bill.date}',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
              CustomTextFormField(
                  onChange: (String billNo) {
                    _bill.billNo = billNo;
                  },
                  title: 'Bill No.'),
              CustomDropdownButton(
                // TODO: Show Selected Retailer
                items: const [
                  DropdownMenuItem(value: '1', child: Text('Abc')),
                  DropdownMenuItem(value: '2', child: Text('Bbc')),
                  DropdownMenuItem(value: '3', child: Text('Cbc')),
                  DropdownMenuItem(value: '4', child: Text('Dbc')),
                ],
                hint: 'Retailer Name',
                onChange: (String retID) {
                  _bill.rid = retID;
                },
              ),
              CustomTextFormField(
                onChange: (String count) {
                  _bill.productCount = int.parse(count);
                },
                title: 'Product Count',
                hint: 'Total No. of product',
                keyboardType: TextInputType.number,
              ),
              CustomTextFormField(
                onChange: (String amount) {
                  _bill.totalAmount = double.parse(amount);
                },
                title: 'Total Amount',
                hint: 'Bill Total Amount',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 75),
                  CustomInkWellButton(
                      onTap: () {
                        // TODO: Save Retailer Bill in database
                        Navigator.of(context).pop();
                      },
                      child: Column(
                        children: const <Widget>[
                          Icon(Icons.save),
                          SizedBox(height: 6),
                          Text('Save'),
                        ],
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
