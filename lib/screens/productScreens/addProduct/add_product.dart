import 'package:flutter/material.dart';
import 'package:pos/models/product/category.dart';
import 'package:pos/models/product/department.dart';
import 'package:pos/models/product/product_size.dart';
import 'package:pos/models/product/stuff.dart';
import 'package:pos/provider/category_provider.dart';
import 'package:pos/provider/department_provider.dart';
import 'package:pos/provider/product_provider.dart';
import 'package:pos/provider/retailer_provider.dart';
import 'package:pos/provider/size_provider.dart';
import 'package:pos/provider/stuff_provider.dart';
import 'package:pos/screens/widgets/custom_appbar.dart';
import 'package:pos/screens/widgets/custom_dropdown_button.dart';
import 'package:pos/screens/widgets/custom_icon_button.dart';
import 'package:pos/screens/widgets/custom_textformfield.dart';
import 'package:pos/screens/widgets/search_retailer_section.dart';
import 'package:pos/utilities/custom_validator.dart';
import 'package:pos/utilities/utilities.dart';
import 'package:provider/provider.dart';

class AddProductScreen extends StatefulWidget {
  const AddProductScreen({Key? key}) : super(key: key);
  static const String routeName = '/AddProductScreen';

  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _barcode = TextEditingController();
  final TextEditingController _retailPrice = TextEditingController();
  final TextEditingController _salePrice = TextEditingController();
  final TextEditingController _shopQty = TextEditingController();
  final TextEditingController _storeQty = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context: context, title: 'Add Product'),
      body: Form(
        key: _key,
        child: Consumer4<ProductProvider, DepartmentProvider, CategoryProvider,
            RetailerProvider>(
          builder: (
            BuildContext context,
            ProductProvider product,
            DepartmentProvider department,
            CategoryProvider category,
            RetailerProvider retailer,
            Widget? child,
          ) =>
              Padding(
            padding: EdgeInsets.symmetric(horizontal: Utilities.padding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SearchRetailerBillSection(retailer: retailer),
                Flexible(
                  flex: 3,
                  child: Wrap(
                    direction: Axis.vertical,
                    alignment: WrapAlignment.end,
                    children: <Widget>[
                      CustomTextFormField(
                        title: 'Name',
                        hint: 'Product Name',
                        controller: _name,
                        initialValue: product.product!.name,
                        validator: (String? value) =>
                            CustomValidator.lessThen3(value),
                      ),
                      Consumer<DepartmentProvider>(
                        builder: (BuildContext context,
                                DepartmentProvider department, Widget? child) =>
                            CustomDropdownButton(
                          items: department.departments
                              .map((Department e) => DropdownMenuItem<String>(
                                    value: e.depID.toString(),
                                    child: Text(e.title.toString()),
                                  ))
                              .toList(),
                          selectedItem: product.product!.depID,
                          hint: 'Department',
                          onChange: (String? depID) {
                            product.product!.catID = null;
                            product.setProductDepID(depID);
                            product.autoBarcode();
                            _barcode.text = product.product!.barcode!;
                          },
                          onPressIcon: () {},
                        ),
                      ),
                      Consumer<CategoryProvider>(
                        builder: (BuildContext context,
                                CategoryProvider category, Widget? child) =>
                            CustomDropdownButton(
                          items: category
                              .categoriesOfSpecificDepartment(
                                  product.product!.depID)
                              .map((Category e) => DropdownMenuItem<String>(
                                  value: e.catID,
                                  child: Text(e.title.toString())))
                              .toList(),
                          selectedItem: product.product!.catID,
                          hint: 'Category',
                          onChange: (String catID) {
                            product.product!.sizeID = null;
                            product.setProductCatID(catID);
                          },
                          onPressIcon: () {},
                        ),
                      ),
                      CustomTextFormField(
                        title: 'Barcode',
                        hint: 'Product Barcode',
                        // initialValue: product.product!.barcode,
                        controller: _barcode,
                        validator: (String? value) =>
                            CustomValidator.lessThen5(value),
                      ),
                      Consumer<SizeProvider>(
                        builder: (BuildContext context, SizeProvider size,
                                Widget? child) =>
                            CustomDropdownButton(
                          items: size
                              .size(product.product!.catID)
                              .map((ProductSize e) => DropdownMenuItem<String>(
                                    value: e.sid,
                                    child: Text(e.title.toString()),
                                  ))
                              .toList(),
                          selectedItem: product.product!.sizeID,
                          hint: 'Size',
                          onChange: (String? sid) {
                            product.setProductSizeID(sid);
                          },
                          onPressIcon: () {},
                        ),
                      ),
                      Consumer<StuffProvider>(
                        builder: (BuildContext context, StuffProvider stuff,
                                Widget? child) =>
                            CustomDropdownButton(
                          items: stuff
                              .stuff(depID: product.product!.depID)
                              .map((Stuff e) => DropdownMenuItem<String>(
                                    value: e.id,
                                    child: Text(e.title.toString()),
                                  ))
                              .toList(),
                          selectedItem: product.product!.stuffID,
                          hint: 'Stuff',
                          onChange: (String? stuffID) {
                            product.setProductStuffID(stuffID);
                          },
                          onPressIcon: () {},
                        ),
                      ),
                      const SizedBox(height: 40),
                      CustomTextFormField(
                        controller: _retailPrice,
                        title: 'Retail Price',
                        hint: 'Price given on retailer bill',
                        keyboardType: TextInputType.number,
                      ),
                      CustomTextFormField(
                        controller: _salePrice,
                        title: 'Sale Price',
                        hint: 'Price for customers',
                        keyboardType: TextInputType.number,
                      ),
                      Row(
                        children: <Widget>[
                          CustomTextFormField(
                            controller: _shopQty,
                            width: 136,
                            title: 'Shop Quantity',
                            hint: 'No. of item in shop',
                            keyboardType: TextInputType.number,
                          ),
                          CustomTextFormField(
                            controller: _storeQty,
                            width: 136,
                            title: 'Store Quantity',
                            hint: 'No. of item in store',
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomIconButton(
                        onTap: () {
                          if (_key.currentState!.validate()) {}
                        },
                        icon: Icons.save,
                        title: 'Save',
                        color: Colors.green,
                      ),
                      CustomIconButton(
                        onTap: () {},
                        icon: Icons.delete,
                        title: 'Cancel',
                        color: Colors.red,
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
