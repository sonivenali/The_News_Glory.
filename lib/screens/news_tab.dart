import 'package:flutter/material.dart';
import 'package:news_daily_app/models/news_tab_model.dart';
import 'package:news_daily_app/services/news_tab_service.dart';
class NewsTab extends StatefulWidget {
final String category;

NewsTab(this.category);
  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  final service = NewsTabService();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsTabModel>(
     future: service.getNewsTab(widget.category),
      builder: (context, snapshot) {
        return ListView(
          children: [
            Text(widget.category)
          ],
        );
      }
    );
  }
}
