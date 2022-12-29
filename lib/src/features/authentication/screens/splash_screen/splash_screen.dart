import 'package:crud_api/src/constants/text_string.dart';
import 'package:crud_api/widget/option_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/image_string.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: animate ? 0 : -30,
              left: animate ? 0 : -30,
              child: Image(
                image: AssetImage(
                  splashTopIcon,
                ),
              ),
              height: 150,
              width: 150,
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: 50,
              right: animate ? 40 : -80,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: animate ? 1 : 0,
                child: Column(
                  children: [
                    Text(appName),
                    Text(appTagLine),
                  ],
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
            AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: animate ? 0 : -50,
              right: animate ? 0 : -50,
              child: Image(
                image: AssetImage(
                  splashbottomIcon,
                ),
                height: 200,
                width: 200,
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

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 2000));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 20000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OptionPage()));
  }
}
