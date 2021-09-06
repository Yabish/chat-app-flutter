import 'package:chappu/utils/constants.dart';
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
      decoration: kTextFieldDecoreation.copyWith(
        hintText: textHint,
      ),
    );
  }
}
