import 'package:flutter/material.dart';
import '../../utilities/utilities.dart';
import '../../utilities/window_size.dart';
import '../RetailerBillScreens/addRetailerBillScreen/add_retailer_bill_screen.dart';
import '../RetailerBillScreens/viewRetailerBillScreen/view_retailer_bill_screen.dart';
import '../productScreens/addProduct/add_product.dart';
import '../productScreens/editProductDetails/edit_product_details.dart';
import '../productScreens/editProductQuantity.dart/edit_product_quantity.dart';
import '../productScreens/printBarcode/print_barcode.dart';
import '../productScreens/saleProduct/sale_product.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_inkwell_button.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key? key}) : super(key: key);
  static const String routeName = '/AdminHomeScreen';
  @override
  _AdminHomeScreenState createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
  @override
  void initState() {
    CustomWindowSize.setCustomWindowSize(
      maxHeight: double.infinity,
      maxWidth: double.infinity,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customWelcomeAppBar(context),
      body: Scrollbar(
        isAlwaysShown: true,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(Utilities.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _title('Product'),
                  _stockButtons(),
                  _title('Reports'),
                  _reportButtons(),
                  _title('Retailer Bill'),
                  Wrap(
                    children: <Widget>[
                      CustomInkWellButton(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AddRetailerBillScreen.routeName);
                        },
                        child: const Text('Add Retailer Bill'),
                      ),
                      CustomInkWellButton(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(ViewRetailerBillScreen.routeName);
                        },
                        child: const Text('View Retailer Bill'),
                      ),
                    ],
                  ),
                  _title('Expenses'),
                  _expenseButtons(),
                  _title('Staff'),
                  _staffButtons(),
                  _title('Retailer'),
                  _retailerButtons()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Wrap _retailerButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Add Retailer'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('View Retailer'),
        ),
      ],
    );
  }

  Wrap _expenseButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Shop Expense'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Staff Expense'),
        ),
      ],
    );
  }

  Wrap _staffButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Add Staff'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('View Staff'),
        ),
      ],
    );
  }

  Wrap _reportButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Stock Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Stock Entry Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Sale Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Expenses Report'),
        ),
        CustomInkWellButton(
          onTap: () {},
          child: const Text('Cash Report'),
        ),
      ],
    );
  }

  Wrap _stockButtons() {
    return Wrap(
      children: <Widget>[
        CustomInkWellButton(
          onTap: () {
            Navigator.of(context).pushNamed(AddProductScreen.routeName);
          },
          child: const Text('Add Product'),
        ),
        CustomInkWellButton(
          onTap: () {
            Navigator.of(context).pushNamed(SaleProductScreen.routeName);
          },
          child: const Text('Sale Product'),
        ),
        CustomInkWellButton(
          onTap: () {
            Navigator.of(context).pushNamed(EditProductDetailsScreen.routeName);
          },
          child: const Text('Edit Product Detail'),
        ),
        CustomInkWellButton(
          onTap: () {
            Navigator.of(context)
                .pushNamed(EditProductQuantityScreen.routeName);
          },
          child: const Text('Edit Product Quantity'),
        ),
        CustomInkWellButton(
          onTap: () {
            Navigator.of(context).pushNamed(PrintBarcodeScreen.routeName);
          },
          child: const Text('Print Barcode'),
        ),
      ],
    );
  }

  Text _title(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.blueGrey,
        letterSpacing: 1,
        fontSize: 20,
      ),
    );
  }
}
