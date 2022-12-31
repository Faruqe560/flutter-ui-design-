import 'package:crud_api/src/constants/image_string.dart';
import 'package:crud_api/src/constants/sizes.dart';
import 'package:crud_api/src/constants/text_string.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultSize),
          child: Column(
            children: [
              Image(image: AssetImage(welcomePageImage)),
              Text(loginTitle),
              Text(loginSubTitle),
            ],
          ),
        ),
      ),
    );
  }
}
