import 'package:crud_api/src/constants/colors.dart';
import 'package:crud_api/src/constants/image_string.dart';
import 'package:crud_api/src/constants/sizes.dart';
import 'package:crud_api/src/constants/text_string.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? secoundaryColor : primaryColor,
        body: Container(
          padding: EdgeInsets.all(17.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage(welcomePageImage),
                height: height * 0.5,
              ),
              Column(
                children: [
                  Text(
                    welcomeTitle,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    welcomeSubTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        loginText.toUpperCase(),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        signUpText.toUpperCase(),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
