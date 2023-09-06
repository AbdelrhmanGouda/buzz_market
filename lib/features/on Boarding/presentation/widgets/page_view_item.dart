import 'package:buzz_market/core/widgets/space_widget.dart';
import 'package:flutter/widgets.dart';

import '../../../../core/constants.dart';


class PageViewItem extends StatelessWidget{
  const PageViewItem( {super.key,required this.title,required this.subTitle});
  final String? title;
  final String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: mainColor,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            width: double.infinity,
            height: 20,
          ),
          Text(
            subTitle!,
            style: const TextStyle(
              color: mainColor,
            ),
              textAlign: TextAlign.center,
          ),
        const VerticalSpace(12),

        ],
      ),
    );
  }

}