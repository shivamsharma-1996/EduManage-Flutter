import 'package:edu_manage/pages/login/login_page.dart';
import 'package:edu_manage/pages/otp/otp_page.dart';
import 'package:edu_manage/themes/light_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightMode,
        home: const OtpPage());
  }
}
