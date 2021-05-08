import 'package:cowin/domain/news/i_new_repo.dart';
import 'package:cowin/domain/news/news.dart';
import 'package:cowin/domain/news/news_failure.dart';
import 'package:cowin/infrastructure/api_endpoints.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class NewsRepo extends INewsRepo {
  @override
  Future<Either<NewsFailure, List<News>>> getLatesNews() async {
    final Dio _dio = Dio();

    try {
      return await _dio.get(ApiEndpoints.news).then((response) async {
        if (response.statusCode != 200) {
          return left(const NewsFailure.serverError());
        } else {
          return right((response.data['data']['worldnews'] as List)
              .map((e) => News.fromJson(e as Map<String, dynamic>))
              .toList()
              .sublist(20));
        }
      });
    } catch (e) {
      return left(const NewsFailure.unexpectedError());
    }
  }
}
