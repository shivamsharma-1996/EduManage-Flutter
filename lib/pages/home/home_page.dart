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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/educonnect.png",
                    width: 140,
                    height: 40,
                  ),
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Your Dashboard',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w500),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 45, vertical: 0),
                        child: Flexible(
                          child: Image.asset(
                            "assets/images/bell.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
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
                                    child: Image.asset(
                                      "assets/images/payment.png",
                                      height: 20,
                                    )),
                              ]),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Fees')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
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
                                    child: Image.asset(
                                      "assets/images/notice.png",
                                      height: 20,
                                    )),
                              ]),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Notice')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
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
                                    child: Image.asset(
                                      "assets/images/calender.png",
                                      height: 20,
                                    )),
                              ]),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Calender')
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
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
                                    child: Image.asset(
                                      "assets/images/homework.png",
                                      height: 20,
                                    )),
                              ]),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Assignment')
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
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
                                    child: Image.asset(
                                      "assets/images/boyAvatar1.png",
                                      height: 20,
                                    )),
                              ]),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text('Notice')
                        ],
                      ),
                      Opacity(
                        opacity: 0.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
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
                                      child: Image.asset(
                                        "assets/images/calender.png",
                                        height: 20,
                                      )),
                                ]),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text('Calender')
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
