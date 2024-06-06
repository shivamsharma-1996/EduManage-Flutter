import 'package:edu_manage/pages/home/home_page.dart';
import 'package:edu_manage/pages/login/login_page.dart';
import 'package:edu_manage/pages/otp/otp_page.dart';
import 'package:edu_manage/pages/welcome/welcome_page.dart';
import 'package:edu_manage/themes/light_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'AIzaSyATmNQFYS_QMO7HXigrIIAnKPQx6ZNZ7gE',
    appId: 'com.educonnect',
    messagingSenderId: '551745014738',
    projectId: 'push-notify-backend',
  ));

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
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const WelcomePage(),
        'login': (context) => const LoginPage(),
        'otp': (context) => const OtpPage(),
        'home': (context) => const HomePage(),
      },
    );
  }
}
