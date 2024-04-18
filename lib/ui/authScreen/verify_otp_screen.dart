import 'package:boiler_plate_app/provider/authVM.dart';
import 'package:boiler_plate_app/styles/styles.dart';
import 'package:boiler_plate_app/widgets/AnimatedButtonLoader.dart';
import 'package:boiler_plate_app/widgets/FormValidator.dart';
import 'package:boiler_plate_app/widgets/PrimaryButton.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {

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
                key: provider.otpFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "Verify Otp",
                        style: Styles.textStyle.headingTS,
                      ),
                    ),
                    Styles.spaceHeight50,
                    Text(
                      "We have sent the code verification to your mobile number",
                      style: Styles.textStyle.normalTS,
                    ),
                    Styles.spaceHeight100,
                    FormValidator(
                      validator: (value) => provider.otp.length!=4?"Incomplete OTP":null,
                      child: OTPTextField(
                        controller: provider.otpController,
                        length: 4,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 60,
                        style: Styles.textStyle.normalTS,
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.box,
                        onCompleted: (pin) {
                          print("Completed: " + pin);
                          provider.otp=pin;
                        },
                        onChanged: (pin) {
                          print("onChanged: " + pin);
                          provider.otp=pin;
                        },
                      ),
                    ),
                    Styles.spaceHeight50,
                    AnimatedButtonLoader(
                      loading: provider.isVerifyOtpLoading,
                      child: PrimaryButton(
                        "Verify",
                        onTap: () {
                          provider.verifyOtp();
                        },
                      ),
                    ),
                    Styles.spaceHeight50,
                    Container(),
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
