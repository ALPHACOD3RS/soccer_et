
import 'package:json_annotation/json_annotation.dart';
part 'news_model_net.g.dart';

@JsonSerializable()
class News {
  final int id;
  final String headline;
   final String image;
  final String author;
  final String datePublished;
  final String topic;
  final String description;

  News(
      {required this.id,
      required this.headline,
      required this.image,
      required this.author,
      required this.datePublished,
      required this.topic,
      required this.description});

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);

  Map<String, dynamic> toJson() => _$NewsToJson(this);
}

// return News(
    //   id: json['id'],
    //   headline: json['headline'],
    //   author: json['author'],
    //   datePublished: json['datePublished'],
    //   topic: json['topic'],
    //   description: json['description'],
    // );

