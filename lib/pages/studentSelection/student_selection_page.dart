import 'package:edu_manage/themes/color_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StudentSelectionPage extends StatelessWidget {
  const StudentSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ThemeColor.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Image.asset(
            "assets/images/educonnect.png",
            width: 140,
            height: 40,
          ),
          const SizedBox(height: 60),
          Image.asset(
            "assets/images/studentSelection.png",
            width: double.infinity,
            height: 150,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Select Profile',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              childAspectRatio: (1 / 1),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(10.0),
              children: List.generate(
                  6,
                  (index) =>
                      GestureDetector(
                        onTap: () => { Navigator.pushNamedAndRemoveUntil(
                                  context, "home", (route) => false)},
                        child: Stack(alignment: AlignmentDirectional.center, children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.asset(
                              "assets/images/avatarStroke.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                            height: 70,
                            child: Image.asset(
                              "assets/images/avatarBg.png",
                              height: 20,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                            height: 60,
                            child: (index == 1 || index == 5)
                                ? Image.asset(
                                    "assets/images/boyAvatar1.png",
                                    height: 20,
                                  )
                                : Image.asset(
                                    "assets/images/girlAvatar.png",
                                    height: 20,
                                  ),
                          ),
                        ]),
                      )),
            ),
          ),
        ]),
      ),
    ));
  }
}
