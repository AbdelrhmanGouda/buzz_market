import 'package:buzz_market/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomGeneralLabel extends StatelessWidget {
  CustomGeneralLabel({
    super.key,
    required this.hint,
    required this.textInputType,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscure,
    this.suffixPressed,
    this.textController,
    required this.validator
  });

  final String? hint;
  IconData? prefixIcon;
  IconData? suffixIcon;
  bool? isObscure = false;
  final TextInputType? textInputType;
  final TextEditingController? textController;
  VoidCallback? suffixPressed;
  var validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      validator: (value) {
        if (value!.isEmpty) {
          return '${validator} must not be empty';
        } else {
          return null;
        }
      },
      keyboardType: textInputType,
      obscureText: isObscure != null ? isObscure! : false,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffixIcon))
            : null,
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
