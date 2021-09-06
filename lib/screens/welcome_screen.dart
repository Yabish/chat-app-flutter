import 'package:chappu/components/button_layout.dart';
import 'package:chappu/screens/login_screen.dart';
import 'package:chappu/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                Text(
                  "ChatApp",
                  style: GoogleFonts.pacifico(fontSize: 45),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Hero(
              tag: 'loginButton',
              child: ButtonLayout(
                title: "LOGIN",
                onPress: () {
                  Navigator.pushNamed(
                    context,
                    LoginScreen.id,
                  );
                },
                color: Colors.lightBlueAccent,
              ),
            ),
            Hero(
              tag: 'registerButton',
              child: ButtonLayout(
                title: "REGISTER",
                onPress: () {
                  Navigator.pushNamed(
                    context,
                    RegisterScreen.id,
                  );
                },
                color: Colors.lightBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
