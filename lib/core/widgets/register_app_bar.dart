import 'package:buzz_market/core/constants.dart';
import 'package:flutter/material.dart';

class RegisterAppBar extends StatelessWidget implements PreferredSizeWidget{
  const RegisterAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xffFBFCFE),
      elevation: 0.0,
      leadingWidth: 80,
      leading: GestureDetector(
        onTap: (){},
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: labelColor,
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          )
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: GestureDetector(
              child:const Text(
                'Need Help? ',
                style: TextStyle(
                    color: mainColor,
                    fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
                ),
              ),
          ),
        ),
      ]
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}