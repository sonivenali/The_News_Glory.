import 'package:flutter/material.dart';
class NewsTab extends StatefulWidget {
final String category;


NewsTab(this.category);

  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Text("")
      ],
    );
  }
}
