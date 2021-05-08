import 'package:cowin/domain/cases/case.dart';
import 'package:cowin/domain/cases/case_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ICasesRepo {
  Future<Either<CaseFailure, Case>> getTotalCases(String country);
}
