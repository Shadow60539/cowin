// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

News newsFromJson(String str) =>
    News.fromJson(json.decode(str) as Map<String, dynamic>);

String newsToJson(News data) => json.encode(data.toJson());

@freezed
abstract class News with _$News {
  const factory News({
    String location,
    String newcases,
    String newdeaths,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
