part of 'cases_bloc.dart';

@freezed
abstract class CasesEvent with _$CasesEvent {
  const factory CasesEvent.getTotalCases(String country) = GetTotalCases;
}
