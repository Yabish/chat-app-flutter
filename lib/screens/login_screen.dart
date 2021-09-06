import 'package:chappu/components/button_layout.dart';
import 'package:chappu/components/input_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200,
                child: Image.asset(
                  'images/logo.png',
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            const InputField(
              obscureText: false,
              textInputType: TextInputType.emailAddress,
              textHint: "Enter Email",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputField(
              obscureText: true,
              textHint: "Enter Password",
            ),
            Hero(
              tag: 'loginButton',
              child: ButtonLayout(
                title: 'LOGIN',
                onPress: () {},
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
