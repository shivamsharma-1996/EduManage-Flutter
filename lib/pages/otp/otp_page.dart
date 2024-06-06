import 'package:edu_manage/components/custom_button.dart';
import 'package:edu_manage/pages/login/login_page.dart';
import 'package:edu_manage/themes/color_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {

  final FirebaseAuth auth = FirebaseAuth.instance;
  String otpPin = "";
  bool _isButtonEnabled = false;
   bool _isOtpValid = true;

  @override
  Widget build(BuildContext context) {
    const borderColor = ThemeColor.primary;
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    const fillColor = ThemeColor.grey_300;
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
          fontSize: 20,
          color: const Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        color: fillColor,
        border: Border.all(color: ThemeColor.grey_300),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: borderColor),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    final errorPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: errorColor,
        borderRadius: BorderRadius.circular(8),
      ),
    );
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: ThemeColor.background,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/educonnect.png",
                    width: 140,
                    height: 40,
                  ),
                  const SizedBox(height: 60),
                  Image.asset(
                    "assets/images/otp.png",
                    width: double.infinity,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Enter OTP',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Pinput(
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: submittedPinTheme,
                    validator: (s) {
                      return _isOtpValid ? null: 'Incorrect OTP';
                    },
                    length: 6,
                    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                    showCursor: true,
                    onCompleted: (pin) => {
                      otpPin = pin
                    },
                    onChanged: (value) => {
                      setState(() {
                    _isButtonEnabled = value.length == 6;
                      })
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Verify",
                    textColor:
                    _isButtonEnabled ? Colors.white : ThemeColor.primary,
                    btnBackground: _isButtonEnabled
                        ? ThemeColor.primary
                        : ThemeColor.alphaPrimary,
                    onPressed: _isButtonEnabled ? () async {
                      try {
                        // Create a PhoneAuthCredential with the code
                        PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: LoginPage.verify, smsCode: otpPin);

                        // Sign the user in (or link) with the credential
                        await auth.signInWithCredential(credential);
                        Navigator.pushNamedAndRemoveUntil(context, "home", (route) => false);
                      } catch(e) {
                        setState(() {
                          _isOtpValid = false;
                        });
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Wrong OTP!', style: TextStyle(color: Colors.red),),
                        ));
                      }
                    }  : () {},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
