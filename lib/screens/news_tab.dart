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
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.response.results.length,
                itemBuilder: (context, index) => NewsCard(
                      news: snapshot.data.response.results[index],
                    ));
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Something went Wrong"),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}

class NewsCard extends StatelessWidget {
  final Results news;
  NewsCard({this.news});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [Text(news.webTitle)],
    ));
  }
}
