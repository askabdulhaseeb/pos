import 'package:flutter/material.dart';
import 'package:pos/screens/widgets/copyright.dart';
import 'package:pos/screens/widgets/password_textformfield.dart';
import 'package:pos/screens/widgets/username_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const String routeName = '/LoginScreen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            UsernameTextFormField(controller: _username),
            const SizedBox(height: 10),
            PasswordTextFormField(controller: _password),
            const Spacer(),
            Copyrights(),
          ],
        ),
      ),
    );
  }
}
