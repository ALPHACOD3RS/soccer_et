import 'package:dio/dio.dart';
import 'package:live_score_app/controller/api.dart';
import 'package:live_score_app/model/news_model.dart';
import 'package:live_score_app/model/news_model_net.dart';

Future<List<News>> fetchNews(List<News> fetch) async {
  print("baseUrl ${ApiConstant().baseUrl}");
  var request = await Dio().get(ApiConstant().baseUrl);

  for (Map<String, dynamic> newses in request.data) {
    fetch.add(News(
        id: newses['id'],
        headline: newses['headline'],
        image: newses['image'],
        author: newses['author'],
        datePublished: newses['datePublished'],
        topic: newses['topic'],
        description: newses['description']));
  }

  //print(ApiConstant());

  return fetch;
}
