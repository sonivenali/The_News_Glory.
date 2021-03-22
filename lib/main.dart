import 'package:flutter/material.dart';
import 'package:news_daily_app/screens/home_page.dart';
import 'package:news_daily_app/splash/splash.dart';

void main() {
  runApp(TheNewsGlory());
}

class TheNewsGlory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
