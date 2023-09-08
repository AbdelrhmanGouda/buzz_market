import 'package:buzz_market/core/constants.dart';
import 'package:buzz_market/core/widgets/already_have_an_account_acheck.dart';
import 'package:buzz_market/core/widgets/custom_buttons.dart';
import 'package:buzz_market/core/widgets/custom_text.dart';
import 'package:buzz_market/core/widgets/or_divider.dart';
import 'package:buzz_market/core/widgets/custom_text_field.dart';
import 'package:buzz_market/core/widgets/social_icon.dart';
import 'package:buzz_market/features/auth/presentation/sginup/signup_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/space_widget.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isChecked = false;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleText(text: 'Welcome Back'),
                const VerticalSpace(1),
                const SubTitleText(
                    text:
                        'Log in to access your personalized real estate experience'),
                const VerticalSpace(1),
                const LabelText(text: "Name"),
                const VerticalSpace(.3),
                CustomGeneralLabel(
                  hint: "Enter your Name",
                  textInputType: TextInputType.name,
                  validator: 'Name',
                ),
                const VerticalSpace(.7),
                const LabelText(text: "Email"),
                const VerticalSpace(.3),
                CustomGeneralLabel(
                  hint: "Enter your Email",
                  textInputType: TextInputType.emailAddress,
                  validator: 'Email',
                ),
                Row(
                  children: [
                    Checkbox(
                      shape: const CircleBorder(),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const HorizontalSpace(7),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget Password',
                          style: TextStyle(
                            color: mainColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const VerticalSpace(.5),
                CustomGeneralButtons(
                    text: "Continue",
                    onTap: () {
                      setState(() {
                        formKey.currentState!.validate();
                      });
                    }),
                const VerticalSpace(1.3),
                const OrDivider(),
                const VerticalSpace(1.3),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                        text: 'assets/images/facebook.png', onTap: () {}),
                    SocialIcon(text: 'assets/images/google.png', onTap: () {}),
                    SocialIcon(text: 'assets/images/apple.png', onTap: () {}),
                  ],
                ),
                const VerticalSpace(3),
                AlreadyHaveAnAccountCheck(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupView()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
