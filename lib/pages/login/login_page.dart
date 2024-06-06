import 'package:edu_manage/components/custom_button.dart';
import 'package:edu_manage/themes/color_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static String verify = "";
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _phoneNumberController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _phoneNumberController.addListener(_validatePhoneNumber);
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _validatePhoneNumber() {
    setState(() {
      _isButtonEnabled = _phoneNumberController.text.length == 10;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                    "assets/images/login.png",
                    width: double.infinity,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Hello!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    'Sign up with your mobile number!',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff635C5C),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: _phoneNumberController,
                    keyboardType: TextInputType.number,
                    showCursor: false,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(10),
                    ],
                    decoration: const InputDecoration(
                        isDense: true,
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('+91'),
                        ),
                        hintText: 'Enter Mobile Number',
                        hintStyle: TextStyle(color: Color(0xff635c5c)),
                        prefixIconConstraints:
                            BoxConstraints(minWidth: 0, minHeight: 0),
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Get OTP",
                    textColor:
                        _isButtonEnabled ? Colors.white : ThemeColor.primary,
                    btnBackground: _isButtonEnabled
                        ? ThemeColor.primary
                        : ThemeColor.alphaPrimary,
                    onPressed: _isButtonEnabled ? () async {
                      await FirebaseAuth.instance.verifyPhoneNumber(
                        phoneNumber:  "+91${_phoneNumberController.text}",
                        verificationCompleted: (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException e) {},
                        codeSent: (String verificationId, int? resendToken) {
                          LoginPage.verify = verificationId;
                          Navigator.pushNamed(context, 'otp');
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                      );
                    } : () {},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
