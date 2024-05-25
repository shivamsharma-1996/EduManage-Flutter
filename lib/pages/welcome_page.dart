import 'package:edu_manage/components/button.dart';
import 'package:edu_manage/components/custom_button.dart';
import 'package:edu_manage/themes/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ThemeColor.background,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    const Text(
                      'Option 1',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 100),
                    Container(
                      width: 265,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/classpus.png",
                            height: 40,
                          ),
                          const SizedBox(height: 14),
                          const Text(
                            "Lorem Ipsum is simply dummy",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xff635C5C)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 90),
              CustomButton(
                text: "Login as Parent",
                onPressed: () {},
              ),
              const Text(
                'Login as Staff',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: ThemeColor.lightPrimary),
              ),
              const SizedBox(height: 90),
              const Text(
                'Powered by',
                style: TextStyle(
                  fontSize: 12,
                    fontWeight: FontWeight.w200,
                    color: ThemeColor.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
