import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_failure.freezed.dart';

@freezed
abstract class NewsFailure with _$NewsFailure {
  const factory NewsFailure.unexpectedError() = _UnexpectedError;
  const factory NewsFailure.serverError() = _ServerError;
}
