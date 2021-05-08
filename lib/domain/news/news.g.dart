// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$_$_NewsFromJson(Map<String, dynamic> json) {
  return _$_News(
    location: json['location'] as String,
    newcases: json['newcases'] as String,
    newdeaths: json['newdeaths'] as String,
  );
}

Map<String, dynamic> _$_$_NewsToJson(_$_News instance) => <String, dynamic>{
      'location': instance.location,
      'newcases': instance.newcases,
      'newdeaths': instance.newdeaths,
    };
