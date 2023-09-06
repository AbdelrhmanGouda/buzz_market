import 'package:buzz_market/core/widgets/register_app_bar.dart';
import 'package:buzz_market/features/auth/presentation/login/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget{
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: RegisterAppBar(),
        body: LoginViewBody()
    );
  }

}