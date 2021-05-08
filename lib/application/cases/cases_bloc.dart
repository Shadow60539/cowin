import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cowin/domain/cases/I_case_repo.dart';
import 'package:cowin/domain/cases/case.dart';
import 'package:cowin/domain/cases/case_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cases_bloc.freezed.dart';
part 'cases_event.dart';
part 'cases_state.dart';

class CasesBloc extends Bloc<CasesEvent, CasesState> {
  CasesBloc(this._repo) : super();

  final ICasesRepo _repo;

  @override
  Stream<CasesState> mapEventToState(
    CasesEvent event,
  ) async* {
    yield* event.map(
      getTotalCases: (e) async* {
        final Either<CaseFailure, Case> failureOrSuccess =
            await _repo.getTotalCases(e.country);
        yield failureOrSuccess.fold(
          (l) => CasesState.failure(),
          (r) => state.copyWith(cases: r, selectedCountry: e.country),
        );
      },
    );
  }

  @override
  // TODO: implement initialState
  CasesState get initialState => CasesState.initial();
}
