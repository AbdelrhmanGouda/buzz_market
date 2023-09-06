import 'package:buzz_market/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomGeneralLabel extends StatelessWidget {
  const CustomGeneralLabel(
      {super.key, required this.hint, required this.textInputType});
  final String? hint;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintStyle: const TextStyle(
          color: hintColor,
        ),
        hintText: hint,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              width: 0,
              color: labelColor,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              width: 1.5,
              color: mainColor,
            )),
        fillColor: labelColor,
      ),
    );
  }
}

class PasswordLabel extends StatelessWidget {
  const PasswordLabel(
      {super.key, required this.hint, required this.textInputType,required this.prefixIcon,required this.suffixIcon});
  final String? hint;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: const TextStyle(
          color: hintColor,
        ),
        hintText: hint,
        filled: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              width: 0,
              color: labelColor,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              width: 1.5,
              color: mainColor,
            )),
        fillColor: labelColor,
      ),
    );
  }
}
