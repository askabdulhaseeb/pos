import 'package:flutter/material.dart';
import 'package:pos/provider/category_provider.dart';
import 'package:pos/provider/department_provider.dart';
import 'package:pos/provider/product_provider.dart';
import 'package:pos/provider/retailer_provider.dart';
import 'package:pos/provider/size_provider.dart';
import 'package:pos/provider/stuff_provider.dart';
import 'package:pos/screens/RetailerBillScreens/EditRetailerBillScreen/edit_retailer_bill_screen.dart';
import 'package:pos/screens/RetailerBillScreens/addRetailerBillScreen/add_retailer_bill_screen.dart';
import 'package:pos/screens/RetailerBillScreens/viewRetailerBillScreen/view_retailer_bill_screen.dart';

import 'package:pos/screens/admin/admin_home_screen.dart';
import 'package:pos/screens/loginScreen/login_screen.dart';
import 'package:pos/screens/productScreens/addProduct/add_product.dart';
import 'package:pos/screens/productScreens/editProductDetails/edit_product_details.dart';
import 'package:pos/screens/productScreens/editProductQuantity.dart/edit_product_quantity.dart';
import 'package:pos/screens/productScreens/printBarcode/print_barcode.dart';
import 'package:pos/screens/productScreens/saleProduct/sale_product.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ignore: always_specify_types
      providers: [
        ChangeNotifierProvider<DepartmentProvider>.value(
            value: DepartmentProvider()),
        ChangeNotifierProvider<CategoryProvider>.value(
            value: CategoryProvider()),
        ChangeNotifierProvider<ProductProvider>.value(value: ProductProvider()),
        ChangeNotifierProvider<RetailerProvider>.value(
            value: RetailerProvider()),
        ChangeNotifierProvider<SizeProvider>.value(value: SizeProvider()),
        ChangeNotifierProvider<StuffProvider>.value(value: StuffProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Point of Sale',
        theme: ThemeData(
          primaryColor: Colors.blue,
          accentColor: Colors.green,
          errorColor: Colors.red,
          splashColor: Colors.blueAccent,
          hoverColor: Colors.blue[100],
          iconTheme: IconThemeData(color: Colors.blue[300]),
        ),
        home: const AdminHomeScreen(),
        routes: <String, WidgetBuilder>{
          LoginScreen.routeName: (_) => const LoginScreen(),
          AdminHomeScreen.routeName: (_) => const AdminHomeScreen(),
          // Product Screen
          AddProductScreen.routeName: (_) => const AddProductScreen(),
          SaleProductScreen.routeName: (_) => const SaleProductScreen(),
          EditProductDetailsScreen.routeName: (_) =>
              const EditProductDetailsScreen(),
          EditProductQuantityScreen.routeName: (_) =>
              const EditProductQuantityScreen(),
          PrintBarcodeScreen.routeName: (_) => const PrintBarcodeScreen(),

          // Retailer Bill Screens
          AddRetailerBillScreen.routeName: (_) => const AddRetailerBillScreen(),
          EditRetailerBillScreen.routeName: (_) =>
              const EditRetailerBillScreen(),
          ViewRetailerBillScreen.routeName: (_) =>
              const ViewRetailerBillScreen(),
        },
      ),
    );
  }
}
