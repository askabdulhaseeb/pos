import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';
import 'package:pos/screens/widgets/custom_textformfield.dart';
import 'package:pos/utilities/utilities.dart';

class SaleProductScreen extends StatefulWidget {
  const SaleProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/SaleProductScreen';
  @override
  _SaleProductScreenState createState() => _SaleProductScreenState();
}

class _SaleProductScreenState extends State<SaleProductScreen> {
  final TextEditingController _barcode = TextEditingController();
  final TextEditingController _qty = TextEditingController(text: '1');
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Sale Product'),
      body: Padding(
        padding: EdgeInsets.all(Utilities.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _shopName(size),
            SizedBox(
              height: size.height * 0.6,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 7,
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text('Bill No: 88620'),
                                Text(
                                  DateFormat('dd-MM-yyyy').format(
                                    DateTime.now(),
                                  ),
                                ),
                              ],
                            ),
                            CustomTextFormField(
                              title: 'Barcode',
                              controller: _barcode,
                              hint: 'Product Barcode to sale',
                              autoFocus: true,
                            ),
                            CustomTextFormField(
                              title: 'Item Quantity',
                              controller: _barcode,
                              hint: 'No. of items',
                              width: 140,
                            ),
                            
                          ],
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.yellow,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _shopName(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Utilities.padding * 2, vertical: Utilities.padding),
      child: SizedBox(
        width: size.width * 0.6,
        height: size.height * 0.16,
        child: const FittedBox(
          child: Text(
            'Baby and Baba \nGarments',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
