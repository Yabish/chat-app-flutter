import 'package:flutter/material.dart';

class ButtonLayout extends StatelessWidget {
  const ButtonLayout({
    Key? key,
    required this.title,
    required this.onPress,
    required this.color,
  }) : super(key: key);

  final String title;
  final Function onPress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: () {
            onPress();
          },
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
