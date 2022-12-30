//import 'package:crud_api/src/constants/image_string.dart';
import 'package:crud_api/src/constants/image_string.dart';
import 'package:crud_api/src/constants/sizes.dart';
import 'package:crud_api/src/constants/text_string.dart';
import 'package:crud_api/src/features/authentication/models/model_on_boarding.dart';
import 'package:crud_api/src/features/authentication/screens/on_boarding/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:crud_api/src/constants/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: onBoardingPage1Image,
          title: onBoardingTitle1,
          subTitle: onBoardingSubTitle1,
          counterText: onBoardingCounter1,
          bgColor: onBoardingPage1Color,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: onBoardingPage2Image,
          title: onBoardingTitle2,
          subTitle: onBoardingSubTitle2,
          counterText: onBoardingCounter2,
          bgColor: onBoardingPage2Color,
          height: size.height,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: onBoardingPage3Image,
          title: onBoardingTitle3,
          subTitle: onBoardingSubTitle3,
          counterText: onBoardingCounter3,
          bgColor: onBoardingPage3Color,
          height: size.height,
        ),
      ),
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            onPageChangeCallback: onPageChangeCallback,
          ),
          Positioned(
              bottom: 60.0,
              child: OutlinedButton(
                  onPressed: () {
                    int nextPage = controller.currentPage + 1;
                    controller.animateToPage(page: nextPage);
                  },
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
              onPressed: () => controller.jumpToPage(page: 2),
              child: Text(
                "Skip",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: controller.currentPage,
              count: 3,
              effect: WormEffect(
                activeDotColor: Color.fromARGB(255, 8, 8, 8),
                dotHeight: 9.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
