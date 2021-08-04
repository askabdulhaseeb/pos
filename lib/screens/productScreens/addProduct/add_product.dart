import 'package:flutter/material.dart';
import 'package:pos/models/product/department.dart';
import 'package:pos/provider/category_provider.dart';
import 'package:pos/provider/department_provider.dart';
import 'package:pos/screens/productScreens/editProductDetails/edit_product_details.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';
import 'package:pos/screens/widgets/custom_dropdown_button.dart';
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
  final TextEditingController _name = TextEditingController();
  final TextEditingController _barcode = TextEditingController();
  String _selectedDep = '';
  @override
  Widget build(BuildContext context) {
    final List<Department> _dep =
        Provider.of<DepartmentProvider>(context).departments;
    final CategoryProvider _cat = Provider.of<CategoryProvider>(context);
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Add Product'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Utilities.padding * 2),
        child: Form(
          key: _globalKey,
          child: Wrap(
            direction: Axis.vertical,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextFormField(
                    controller: _barcode,
                    title: 'Bill No',
                    hint: 'Retailer Bill No.',
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Search'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(EditProductDetailsScreen.routeName);
                        },
                        child: const Text('Add Bill'),
                      ),
                    ],
                  ),
                ],
              ),
              CustomTextFormField(
                controller: TextEditingController(text: 'ABCD'),
                title: 'Bill No',
                // hint: 'Retailer Bill No.',
                readOnly: true,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                controller: _name,
                title: 'Name',
                hint: 'Product Name',
              ),
              CustomDropdownButton(
                items: _dep
                    .map((e) => DropdownMenuItem(
                          value: e.depID,
                          child: Text(e.title),
                        ))
                    .toList(),
                hint: 'Department',
                onChange: (String? depID) {
                  setState(() {
                    _selectedDep = depID!;
                  });
                },
              ),
              CustomDropdownButton(
                items: _cat
                    .categoriesOfSpecificDepartment(_selectedDep)
                    .map((e) => DropdownMenuItem(
                          value: e.catID,
                          child: Text(e.title),
                        ))
                    .toList(),
                hint: 'Category',
                onChange: (value) {},
              ),
              CustomTextFormField(
                controller: _name,
                title: 'Barcode',
                hint: 'Product Barcode',
              ),
              CustomTextFormField(
                controller: _name,
                title: 'Size',
                hint: 'Product Size',
              ),
              CustomTextFormField(
                controller: _name,
                title: 'Stuff',
                hint: 'Product Stuff',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
