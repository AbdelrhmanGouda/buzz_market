import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants.dart';

class CustomIndicator extends StatelessWidget{
  const CustomIndicator({super.key,required this.dotIndex});
  final double? dotIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator:  DotsDecorator(
        //color: Colors.transparent,
        activeColor: mainColor,
      ),
      dotsCount: 3,
      position: dotIndex!.toInt(),
    );
  }

}