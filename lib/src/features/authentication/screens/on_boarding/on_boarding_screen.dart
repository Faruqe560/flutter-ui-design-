//import 'package:crud_api/src/constants/image_string.dart';
import 'package:crud_api/src/constants/image_string.dart';
import 'package:crud_api/src/constants/sizes.dart';
import 'package:crud_api/src/constants/text_string.dart';
import 'package:crud_api/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:crud_api/src/features/authentication/models/model_on_boarding.dart';
import 'package:crud_api/src/features/authentication/screens/on_boarding/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:crud_api/src/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            enableSideReveal: true,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangeCallback,
            slideIconWidget: Icon(Icons.arrow_back_ios),
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                  onPressed: () => obcontroller.animateToNextSlide(),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.black26),
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    onPrimary: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xff272727),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ))),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => obcontroller.skip(),
              child: Text(
                "Skip",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage.value,
                count: 3,
                effect: WormEffect(
                  activeDotColor: Color.fromARGB(255, 8, 8, 8),
                  dotHeight: 9.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
