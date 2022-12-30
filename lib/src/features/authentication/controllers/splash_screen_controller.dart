import 'package:crud_api/widget/option_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 3000));

    animate.value = true;

    await Future.delayed(Duration(milliseconds: 6000));
    Get.to(OptionPage());
    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => OptionPage()));
  }
}
