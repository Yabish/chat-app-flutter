import 'package:chappu/components/button_layout.dart';
import 'package:chappu/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String email = '';
  String password = '';

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
            TextField(
              onChanged: (value) {},
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              decoration: kTextFieldDecoreation.copyWith(
                hintText: "Enter Email",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {},
              obscureText: true,
              decoration: kTextFieldDecoreation.copyWith(
                hintText: 'Enter password',
              ),
            ),
            Hero(
              tag: 'registerButton',
              child: ButtonLayout(
                title: 'REGISTER',
                onPress: () {},
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
