// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Case _$_$_CaseFromJson(Map<String, dynamic> json) {
  return _$_Case(
    recovered: json['recovered'] as int,
    deaths: json['deaths'] as int,
    confirmed: json['confirmed'] as int,
    lastChecked: json['lastChecked'] == null
        ? null
        : DateTime.parse(json['lastChecked'] as String),
    lastReported: json['lastReported'] == null
        ? null
        : DateTime.parse(json['lastReported'] as String),
    location: json['location'] as String,
  );
}

Map<String, dynamic> _$_$_CaseToJson(_$_Case instance) => <String, dynamic>{
      'recovered': instance.recovered,
      'deaths': instance.deaths,
      'confirmed': instance.confirmed,
      'lastChecked': instance.lastChecked?.toIso8601String(),
      'lastReported': instance.lastReported?.toIso8601String(),
      'location': instance.location,
    };
