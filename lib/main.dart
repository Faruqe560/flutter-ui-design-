import 'package:crud_api/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:crud_api/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:crud_api/src/features/authentication/screens/welcomepage/welcome_screen.dart';
import 'package:crud_api/src/utils/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Future.delayed(Duration(minutes: 10)).then((value) {
//       Navigator.of(context).pushReplacement(
//           CupertinoPageRoute(builder: (contex) => OptionPage()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.amberAccent,
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Image.asset(
//               "assets/todo.png",
//               color: Colors.white,
//             ),
//             Center(
//               child: Lottie.asset(
//                 "assets/loading2.json",
//                 height: 300,
//                 width: 300,
//               ),
//             ),
//             SizedBox(
//               height: 180.00,
//             ),
//             Text.rich(
//               TextSpan(
//                   text: "Developed by ",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold, color: Colors.black),
//                   children: [
//                     TextSpan(
//                         text: "F",
//                         style:
//                             TextStyle(color: Colors.redAccent, fontSize: 22.0)),
//                     TextSpan(text: "ruqe"),
//                     TextSpan(
//                         text: "H",
//                         style:
//                             TextStyle(color: Colors.redAccent, fontSize: 22.0)),
//                     TextSpan(text: "asan"),
//                   ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
