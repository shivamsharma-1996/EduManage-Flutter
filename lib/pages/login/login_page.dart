import 'package:edu_manage/components/custom_button.dart';
import 'package:edu_manage/themes/color_theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
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
                    textColor: ThemeColor.primary,
                    btnBackground: ThemeColor.alphaPrimary,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
