import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/category_provider.dart';
import 'provider/department_provider.dart';
import 'provider/product_provider.dart';
import 'provider/retailer_provider.dart';
import 'provider/size_provider.dart';
import 'provider/stoff_provider.dart';
import 'provider/stuff_provider.dart';
import 'screens/RetailerBillScreens/EditRetailerBillScreen/edit_retailer_bill_screen.dart';
import 'screens/RetailerBillScreens/addRetailerBillScreen/add_retailer_bill_screen.dart';
import 'screens/RetailerBillScreens/viewRetailerBillScreen/view_retailer_bill_screen.dart';
import 'screens/admin/admin_home_screen.dart';
import 'screens/loginScreen/login_screen.dart';
import 'screens/productScreens/addProduct/add_product.dart';
import 'screens/productScreens/editProductDetails/edit_product_details.dart';
import 'screens/productScreens/editProductQuantity.dart/edit_product_quantity.dart';
import 'screens/productScreens/printBarcode/print_barcode.dart';
import 'screens/productScreens/saleProduct/sale_product.dart';

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
        ChangeNotifierProvider<StoffProvider>.value(value: StoffProvider()),
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
