import 'package:flutter/cupertino.dart';

import '../utils/size_config.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace(this.value) ;
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.024 * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value) ;
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *0.024 * value!,
    );
  }
}