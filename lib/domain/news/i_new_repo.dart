import 'package:cowin/domain/news/news.dart';
import 'package:dartz/dartz.dart';

import 'news_failure.dart';

abstract class INewsRepo {
  Future<Either<NewsFailure, List<News>>> getLatesNews();
}
