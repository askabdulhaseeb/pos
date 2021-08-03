import 'package:flutter/material.dart';
import 'package:pos/screens/widgets/copyright.dart';
import 'package:pos/screens/widgets/custom_inkwell_button.dart';
import 'package:pos/screens/widgets/password_textformfield.dart';
import 'package:pos/screens/widgets/username_textformfield.dart';
import 'package:pos/utilities/window_size.dart';

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
  void initState() {
    CustomWindowSize.setCustomWindowSize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            UsernameTextFormField(controller: _username),
            const SizedBox(height: 10),
            PasswordTextFormField(controller: _password),
            CustomInkWellButton(onTap: () {}, child: const Text('Login')),
            Copyrights(),
          ],
        ),
      ),
    );
  }
}
