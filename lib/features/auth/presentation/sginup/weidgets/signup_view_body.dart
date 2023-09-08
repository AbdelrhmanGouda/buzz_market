import 'package:flutter/material.dart';

import '../../../../../core/constants.dart';
import '../../../../../core/widgets/custom_buttons.dart';
import '../../../../../core/widgets/custom_text.dart';
import '../../../../../core/widgets/custom_text_field.dart';
import '../../../../../core/widgets/or_divider.dart';
import '../../../../../core/widgets/social_icon.dart';
import '../../../../../core/widgets/space_widget.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool isChecked = false;
  bool isObscureText = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleText(text: 'Register Your New Account!'),
              const VerticalSpace(1),
              const SubTitleText(text: 'Enter your information below'),
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
              const LabelText(text: "Password"),
              const VerticalSpace(.3),
              CustomGeneralLabel(
                hint: "Password",
                validator: 'Password',
                textInputType: TextInputType.visiblePassword,
                prefixIcon: Icons.lock,
                suffixIcon: isObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                isObscure: isObscureText,
                suffixPressed: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
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
                    'By creating an account, you agree to our',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {

                      },
                      child: const Text(
                        'Terms and Condition',
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
                  text: "Create Account",
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
                  SocialIcon(text: 'assets/images/facebook.png', onTap: () {}),
                  SocialIcon(text: 'assets/images/google.png', onTap: () {}),
                  SocialIcon(text: 'assets/images/apple.png', onTap: () {}),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
