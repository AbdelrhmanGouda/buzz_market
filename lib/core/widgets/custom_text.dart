import 'package:flutter/material.dart';

import '../constants.dart';

class TitleText extends StatelessWidget{
  const TitleText({super.key,required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 38.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

}

class SubTitleText extends StatelessWidget{
  const SubTitleText({super.key,required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        text!,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: subtitleColor,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
      ),
    );
  }

}

class LabelText extends StatelessWidget{
  const LabelText({super.key,required this.text});
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
    );
  }

}