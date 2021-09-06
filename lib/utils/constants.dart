import 'package:flutter/material.dart';

const kTextFieldDecoreation = InputDecoration(
  hintText: "Enter value",
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
  enabledBorder: OutlineInputBorder(
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
  focusedBorder: OutlineInputBorder(
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
);
