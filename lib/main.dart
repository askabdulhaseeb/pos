import 'package:flutter/material.dart';
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
      ),
      home: const LoginScreen(),
    );
  }
}
