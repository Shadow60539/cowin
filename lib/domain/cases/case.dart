// To parse this JSON data, do
//
//     final case = caseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'case.freezed.dart';
part 'case.g.dart';

Case caseFromJson(String str) =>
    Case.fromJson(json.decode(str) as Map<String, dynamic>);

String caseToJson(Case data) => json.encode(data.toJson());

@freezed
abstract class Case with _$Case {
  const factory Case({
    int recovered,
    int deaths,
    int confirmed,
    DateTime lastChecked,
    DateTime lastReported,
    String location,
  }) = _Case;

  factory Case.fromJson(Map<String, dynamic> json) => _$CaseFromJson(json);
}
