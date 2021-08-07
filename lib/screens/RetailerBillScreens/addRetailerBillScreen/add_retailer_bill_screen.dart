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
  final TextEditingController _billNo = TextEditingController();
  final TextEditingController _count = TextEditingController();
  final TextEditingController _totalAmount = TextEditingController();
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
              CustomTextFormField(controller: _billNo, title: 'Bill No.'),
              CustomDropdownButton(
                // TODO: Show Selected Retailer
                items: const <DropdownMenuItem<String>>[
                  DropdownMenuItem<String>(value: '1', child: Text('Abc')),
                  DropdownMenuItem<String>(value: '2', child: Text('Bbc')),
                  DropdownMenuItem<String>(value: '3', child: Text('Cbc')),
                  DropdownMenuItem<String>(value: '4', child: Text('Dbc')),
                ],
                onPressIcon: (){},
                selectedItem: '234',
                hint: 'Retailer Name',
                onChange: (String retID) {
                  _bill.rid = retID;
                },
              ),
              CustomTextFormField(
                controller: _count,
                title: 'Product Count',
                hint: 'Total No. of product',
                keyboardType: TextInputType.number,
              ),
              CustomTextFormField(
                controller: _totalAmount,
                title: 'Total Amount',
                hint: 'Bill Total Amount',
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 10),
              Row(
                children: <Widget>[
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
