import 'package:flutter/material.dart';
import 'package:news_daily_app/models/news_tab_model.dart';
import 'package:news_daily_app/screens/details_page.dart';
import 'package:news_daily_app/services/news_tab_service.dart';
import 'package:intl/intl.dart';

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
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsPage(news.webUrl)),
        );
      },
      child: Card(
          child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          news.webTitle,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          DateFormat('MMM dd').format(DateTime.parse(
                              DateFormat("yyyy-MM-ddTHH:mm:ssZ")
                                  .parse(news.webPublicationDate)
                                  .toString())),
                        ),
                      ),
                    ],
                  ),
                ],
              ))),
    );
  }
}
