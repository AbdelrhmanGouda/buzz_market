import 'package:buzz_market/core/widgets/custom_buttons.dart';
import 'package:buzz_market/features/on%20Boarding/presentation/widgets/custom_indicator.dart';
import 'package:buzz_market/features/on%20Boarding/presentation/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';

import '../../../auth/presentation/login/login_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(
       initialPage:0
     )..addListener(() {
       setState(() {

       });
     });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: MediaQuery.of(context).size.height * .024 * 10,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          )
        ),
        Positioned(
            left: MediaQuery.of(context).size.width * .024 * 3,
            right: MediaQuery.of(context).size.width * .024 * 3,
            bottom: MediaQuery.of(context).size.height * .024 * 5,
            child:  CustomGeneralButtons(
              onTap: () {
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()),
                    );
                 // Get.to(() => LoginView(), transition: Transition.rightToLeft , duration: Duration(milliseconds: 500));
                }
              },
            text:pageController!.hasClients
                ? (pageController?.page == 2 ? 'Get started' : 'Next')
                : 'Next',
          )
        ),
      ],
    );
  }
}
