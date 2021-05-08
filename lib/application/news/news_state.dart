part of 'news_bloc.dart';

@freezed
abstract class NewsState with _$NewsState {
  const factory NewsState({
    List<News> listOfNews,
  }) = _NewsState;
  factory NewsState.initial() => const NewsState(listOfNews: []);
  factory NewsState.error() => const NewsState();
}
