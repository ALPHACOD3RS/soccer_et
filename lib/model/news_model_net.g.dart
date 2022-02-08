// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model_net.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(
    id: json['id'] as int,
    headline: json['headline'] as String,
    image: json['headline'] as String,
    author: json['author'] as String,
    datePublished: json['datePublished'] as String,
    topic: json['topic'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'id': instance.id,
      'headline': instance.headline,
      'image': instance.image,
      'author': instance.author,
      'datePublished': instance.datePublished,
      'topic': instance.topic,
      'description': instance.description,
    };
