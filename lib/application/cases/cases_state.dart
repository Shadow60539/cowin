part of 'cases_bloc.dart';

@freezed
abstract class CasesState with _$CasesState {
  const factory CasesState({
    Case cases,
    String selectedCountry,
  }) = _CasesState;

  factory CasesState.initial() =>
      const CasesState(cases: Case(), selectedCountry: 'India');
  factory CasesState.failure() => const CasesState();
}
