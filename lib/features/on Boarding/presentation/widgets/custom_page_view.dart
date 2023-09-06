import 'package:buzz_market/features/on%20Boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget{
  const CustomPageView({super.key,required this.pageController});
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(title: 'Discover Endless Shopping Possibilities',
          subTitle: 'Explore a vast collection of products from top brands, all in one place.',),
        PageViewItem(title: 'Effortless Shopping Experience',
          subTitle: 'Enjoy a seamless and intuitive interface that makes shopping a breeze.',),
        PageViewItem(title: 'Stay Ahead of the Latest Trends',
          subTitle: 'Be the first to discover and own the hottest fashion, tech, and lifestyle products',)
      ],
    );
  }

}