import 'package:flutter/material.dart';
import 'package:pos/screens/admin/admin_home_screen.dart';
import 'package:pos/screens/loginScreen/login_screen.dart';
import 'package:pos/screens/productScreens/addProduct/add_product.dart';
import 'package:pos/screens/productScreens/editProductDetails/edit_product_details.dart';
import 'package:pos/screens/productScreens/editProductQuantity.dart/edit_product_quantity.dart';
import 'package:pos/screens/productScreens/printBarcode/print_barcode.dart';
import 'package:pos/screens/productScreens/saleProduct/sale_product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      routes: {
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
      },
    );
  }
}
