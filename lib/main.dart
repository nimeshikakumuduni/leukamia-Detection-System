import 'package:flutter/material.dart';
import 'package:leukamia_detection_flutter/Pages/CbcCheckupPage.dart';
import 'package:leukamia_detection_flutter/Pages/HomePage.dart';
import 'package:leukamia_detection_flutter/Pages/LtypeCheckPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => HomePage(),
        "/cbcrepoort": (context) => CBCCheckPage(),
        "/bloodimage": (context) => LtypeDetectionPage(),
      },
    );
  }
}
