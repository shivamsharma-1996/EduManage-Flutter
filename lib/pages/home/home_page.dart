import 'package:flutter/material.dart';

import '../../themes/color_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    "assets/images/home.png",
                    width: double.infinity,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Your Dashboard',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),



                ],
              ),
            ),
          )),
    );
  }
}
