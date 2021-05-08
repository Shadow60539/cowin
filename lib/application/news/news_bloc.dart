import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cowin/domain/news/i_new_repo.dart';
import 'package:cowin/domain/news/news.dart';
import 'package:cowin/domain/news/news_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.dart';
part 'news_state.dart';
part 'news_bloc.freezed.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.repo) : super();

  final INewsRepo repo;

  @override
  Stream<NewsState> mapEventToState(
    NewsEvent event,
  ) async* {
    yield* event.map(
      getLatestNews: (e) async* {
        final Either<NewsFailure, List<News>> failureOrSuccess =
            await repo.getLatesNews();
        yield failureOrSuccess.fold(
            (l) => NewsState.error(), (r) => state.copyWith(listOfNews: r));
      },
    );
    // TODO: implement mapEventToState
  }

  @override
  // TODO: implement initialState
  NewsState get initialState => NewsState.initial();
}
