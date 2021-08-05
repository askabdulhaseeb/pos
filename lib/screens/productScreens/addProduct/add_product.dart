import 'package:flutter/material.dart';
import 'package:pos/provider/product_provider.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';
import 'package:pos/screens/widgets/custom_dropdown_button.dart';
import 'package:pos/screens/widgets/custom_inkwell_button.dart';
import 'package:pos/screens/widgets/custom_textformfield.dart';
import 'package:pos/utilities/utilities.dart';
import 'package:provider/provider.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/AddProductScreen';
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  // String _selectedDep = '';
  @override
  Widget build(BuildContext context) {
    // final CategoryProvider _cat = Provider.of<CategoryProvider>(context);
    // final List<Department> _dep =
    //     Provider.of<DepartmentProvider>(context).departments;
    final ProductProvider _product = Provider.of<ProductProvider>(context);
    print('object');
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Add Product'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utilities.padding * 2),
        child: Form(
          key: _globalKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _retailerBillSection(context, _product),
              if (_product.retailerBill != null)
                _productDetailsSection(context, _product),
            ],
          ),
        ),
      ),
    );
  }

  Wrap _productDetailsSection(BuildContext context, ProductProvider product) {
    return Wrap(
      direction: Axis.vertical,
      children: <Widget>[
        const SizedBox(height: 20),
        CustomTextFormField(
          onChange: (String value) {
            product.setName(value);
          },
          title: 'Name',
          hint: 'Product Name',
        ),
        CustomDropdownButton(
          items: const <DropdownMenuItem<String>>[],
          hint: 'Department',
          onChange: (String? depID) {},
        ),
        CustomDropdownButton(
          items: const <DropdownMenuItem<String>>[],
          hint: 'Category',
          onChange: (String value) {},
        ),
        CustomTextFormField(
          onChange: (String value) {},
          title: 'Barcode',
          hint: 'Product Barcode',
        ),
        CustomTextFormField(
          onChange: (String value) {},
          title: 'Size',
          hint: 'Product Size',
        ),
        CustomTextFormField(
          onChange: (String value) {},
          title: 'Stuff',
          hint: 'Product Stuff',
        ),
      ],
    );
  }

  Column _retailerBillSection(BuildContext context, ProductProvider product) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextFormField(
              onChange: (String? value) {
                product.setRetailerBillNo(value);
              },
              title: 'Bill No',
              hint: 'Retailer Bill No.',
              autoFocus: true,
            ),
            CustomInkWellButton(
              onTap: () {
                // TODO: search bill from database
              },
              child: const Text('Search'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Retailer: No Retailer found',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(width: 60),
            TextButton(onPressed: () {}, child: const Text('Add New Bill')),
          ],
        ),
      ],
    );
  }
}
