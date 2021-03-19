import 'package:flutter/material.dart';
import 'package:news_daily_app/screens/home_page.dart';

void main() {
  runApp(NewsDaily());
}

class NewsDaily extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
