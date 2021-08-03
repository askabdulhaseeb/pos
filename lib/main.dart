import 'package:flutter/material.dart';
import 'package:pos/screens/admin/admin_home_screen.dart';
import 'package:pos/screens/loginScreen/login_screen.dart';

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
      },
    );
  }
}
