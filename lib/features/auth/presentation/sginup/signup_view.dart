import 'package:buzz_market/core/widgets/register_app_bar.dart';
import 'package:buzz_market/features/auth/presentation/sginup/weidgets/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupView extends StatelessWidget{
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RegisterAppBar(),
      body: SignupViewBody(),
    );
  }
}