import 'package:chappu/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal,
      ),
      // home: WelcomeScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        // '/second': (context) => const SecondScreen(),
      },
    );
  }
}
