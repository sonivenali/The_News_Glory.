import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_daily_app/models/news_tab_model.dart';

class NewsTabService {
  Future<NewsTabModel> getNewsTab(String category) async {
    try {
      final response = await http.get(
        'https://content.guardianapis.com/$category?api-key=e8cc8e23-6dbb-402c-90f1-0289b2a7f70a',
      );
      final data = json.decode(response.body);
      print(data);
      return NewsTabModel.fromJson(data);
    } catch (e, stacktrace) {
      print(stacktrace);
      return null;
    }
  }
}
