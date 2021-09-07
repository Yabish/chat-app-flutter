import 'package:chappu/components/button_layout.dart';
import 'package:chappu/screens/chat_screen.dart';
import 'package:chappu/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
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
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
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
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
              decoration: kTextFieldDecoreation.copyWith(
                hintText: 'Enter password',
              ),
            ),
            Hero(
              tag: 'loginButton',
              child: ButtonLayout(
                title: 'LOGIN',
                onPress: () async {
                  if (email != '' && password != '') {
                    try {
                      final UserCredential user =
                          await _auth.signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      );

                      print(' User-------- ${user.user?.uid}');

                      if (user.user?.uid != null) {
                        Navigator.pushNamed(context, ChatScreen.id);
                      }
                    } catch (e) {
                      // setState(() {
                      //   showSpinner = false;
                      // });
                      print('error $e');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(e.toString()),
                        ),
                      );
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please Enter Email and Password"),
                        backgroundColor: Colors.grey,
                      ),
                    );
                  }
                },
                color: Colors.lightBlueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
