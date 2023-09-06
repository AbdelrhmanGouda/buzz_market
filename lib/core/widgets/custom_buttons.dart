import 'package:buzz_market/core/constants.dart';
import 'package:buzz_market/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomGeneralButtons extends StatelessWidget{
  const CustomGeneralButtons({super.key,required this.text,required this.onTap});
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: SizeConfig.screenWidth,
        decoration:BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            text!,
            style: const TextStyle(
              color: white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

}