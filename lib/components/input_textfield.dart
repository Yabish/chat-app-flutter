import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    this.textHint,
    required this.obscureText,
    this.textInputType,
  }) : super(key: key);

  final String? textHint;
  final bool obscureText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      keyboardType: textInputType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: textHint,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              32,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32,
            ),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              32,
            ),
          ),
        ),
      ),
    );
  }
}
