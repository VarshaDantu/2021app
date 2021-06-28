import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  final double size;
  final bool obscureText;
  final String labelName;
  final keyboardType;
  final controller;

  CustomTextFormField({
    this.obscureText,
    this.labelName,
    this.size = 16.0,
    this.keyboardType,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        labelText: labelName,
        labelStyle: TextStyle(
          fontSize: size,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
