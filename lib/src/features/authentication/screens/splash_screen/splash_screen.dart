import 'package:crud_api/src/constants/text_string.dart';
import 'package:crud_api/widget/option_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/image_string.dart';
import '../../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                top: splashController.animate.value ? 0 : -30,
                left: splashController.animate.value ? 0 : -30,
                child: Image(
                  image: AssetImage(
                    splashTopIcon,
                  ),
                ),
                height: 150,
                width: 150,
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                top: 50,
                right: splashController.animate.value ? 40 : -80,
                child: AnimatedOpacity(
                  duration: Duration(milliseconds: 1600),
                  opacity: splashController.animate.value ? 1 : 0,
                  child: Column(
                    children: [
                      Text(appName),
                      Text(appTagLine),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 210,
              left: 50,
              child: Lottie.asset(
                "assets/images/slash.json",
                height: 300,
                width: 300,
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: Duration(milliseconds: 1600),
                bottom: splashController.animate.value ? 0 : -50,
                right: splashController.animate.value ? 0 : -50,
                child: Image(
                  image: AssetImage(
                    splashbottomIcon,
                  ),
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Positioned(
              bottom: 70,
              left: 50,
              child: Column(
                children: [
                  Text(
                    "Developed by",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text.rich(
                    TextSpan(
                        text: " ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "F",
                              style: TextStyle(
                                  color: Colors.redAccent, fontSize: 22.0)),
                          TextSpan(text: "ruqe"),
                          TextSpan(
                              text: "H",
                              style: TextStyle(
                                  color: Colors.redAccent, fontSize: 22.0)),
                          TextSpan(text: "asan"),
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
