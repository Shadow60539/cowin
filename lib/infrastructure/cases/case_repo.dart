import 'package:cowin/domain/cases/I_case_repo.dart';
import 'package:cowin/domain/cases/case.dart';
import 'package:cowin/domain/cases/case_failure.dart';
import 'package:cowin/infrastructure/api_endpoints.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class CaseRepo extends ICasesRepo {
  @override
  Future<Either<CaseFailure, Case>> getTotalCases(String country) async {
    final Dio _dio = Dio(BaseOptions(
      headers: {
        "x-rapidapi-key": "a6a516dbdfmsha407d994bc42c87p1b1258jsn2a02ed2b6ceb",
        "x-rapidapi-host": "covid-19-coronavirus-statistics.p.rapidapi.com",
      },
    ));

    try {
      return await _dio.get(
        ApiEndpoints.totalCases,
        queryParameters: {"country": country},
      ).then((response) async {
        if (response.statusCode != 200) {
          return left(const CaseFailure.serverError());
        } else {
          return right(
              Case.fromJson(response.data['data'] as Map<String, dynamic>));
        }
      });
    } catch (e) {
      return left(const CaseFailure.unexpectedError());
    }
  }
}
