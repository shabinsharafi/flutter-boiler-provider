import 'package:boiler_plate_app/provider/authVM.dart';
import 'package:boiler_plate_app/styles/styles.dart';
import 'package:boiler_plate_app/utils/NavigationService.dart';
import 'package:boiler_plate_app/utils/validations.dart';
import 'package:boiler_plate_app/widgets/AnimatedButtonLoader.dart';
import 'package:boiler_plate_app/widgets/PrimaryButton.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Consumer<AuthenticationProvider>(
            builder: (context, provider, child) {
          return Padding(
            padding: Styles.normalScreenPadding,
            child: Form(
              key: provider.signupFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40,),
                  Center(
                    child: Text(
                      "Signup",
                      style: Styles.textStyle.tooBigHeadingTS,
                    ),
                  ),
                  Styles.spaceHeight70,
                  Text(
                    "Name",
                    style: Styles.textStyle.smallBoldTS,
                  ),
                  Styles.spaceHeight12,
                  TextFormField(
                    controller: provider.nameController,
                    keyboardType: TextInputType.name,
                    decoration: Styles.inputForm(),
                    validator: (value) => Validations.requiredTextOnly(value!),
                  ),
                  Styles.spaceHeight20,
                  Text(
                    "Phone Number",
                    style: Styles.textStyle.smallBoldTS,
                  ),
                  Styles.spaceHeight12,
                  TextFormField(
                    controller: provider.phoneNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: Styles.inputForm(),
                    validator: (value) => Validations.phone(value!),
                  ),
                  Styles.spaceHeight20,
                  Text(
                    "Email",
                    style: Styles.textStyle.smallBoldTS,
                  ),
                  Styles.spaceHeight12,
                  TextFormField(
                    controller: provider.emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: Styles.inputForm(),
                    validator: (value) => Validations.email(value!),
                  ),
                  Styles.spaceHeight50,
                  AnimatedButtonLoader(
                    loading: provider.isSignupLoading,
                    child: PrimaryButton(
                      "Create Account",
                      onTap: () {
                        provider.signup();
                      },
                    ),
                  ),
                  Styles.spaceHeight50,
                  RichText(
                      text: TextSpan(
                          text: "Already a member? ",
                          style: Styles.textStyle.normalTS,
                          children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {
                              /*NavigationService.changeScreen(
                                  LoginScreen());*/
                              NavigationService.close();
                            },
                            text: "Login",
                            style: Styles.textStyle.normalBoldTS
                                .copyWith(color: Styles.color.primaryColor))
                      ])),
                  Container(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
