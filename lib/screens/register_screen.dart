import 'package:chappu/components/button_layout.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String id = 'register_screen';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              decoration: const InputDecoration(
                hintText: 'Enter Email',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      32,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              onChanged: (value) {},
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Enter Password',
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      32,
                    ),
                  ),
                ),
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
