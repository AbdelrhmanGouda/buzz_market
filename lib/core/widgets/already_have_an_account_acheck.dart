import 'package:buzz_market/core/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget{
  const AlreadyHaveAnAccountCheck({super.key,required this.onTap});
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        const Text(
          "Already have an Account?",
          style: TextStyle(color: Color(0xff878B8F),fontWeight: FontWeight.w500),
        ),
        TextButton(
          onPressed: onTap,
          child: const Text(
             "Log In",
            style: TextStyle(
              color: mainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}