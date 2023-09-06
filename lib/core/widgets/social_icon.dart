import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({super.key,required this.text,required this.onTap});
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 27, vertical: 15),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffF0F0F0),
          ),
          borderRadius: BorderRadius.all(Radius.circular(17)),
        ),
        child: Image.asset(
          text!,
          width: 20,
          height: 20,
        ),
      ),
    );
  }
}
