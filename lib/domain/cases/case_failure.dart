import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'case_failure.freezed.dart';

@freezed
abstract class CaseFailure with _$CaseFailure {
  const factory CaseFailure.unexpectedError() = _UnexpectedError;
  const factory CaseFailure.serverError() = _ServerError;
}
