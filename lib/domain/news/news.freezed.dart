// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

// ignore: unused_element
  _News call({String location, String newcases, String newdeaths}) {
    return _News(
      location: location,
      newcases: newcases,
      newdeaths: newdeaths,
    );
  }

// ignore: unused_element
  News fromJson(Map<String, Object> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  String get location;
  String get newcases;
  String get newdeaths;

  Map<String, dynamic> toJson();
  $NewsCopyWith<News> get copyWith;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call({String location, String newcases, String newdeaths});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object location = freezed,
    Object newcases = freezed,
    Object newdeaths = freezed,
  }) {
    return _then(_value.copyWith(
      location: location == freezed ? _value.location : location as String,
      newcases: newcases == freezed ? _value.newcases : newcases as String,
      newdeaths: newdeaths == freezed ? _value.newdeaths : newdeaths as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call({String location, String newcases, String newdeaths});
}

/// @nodoc
class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object location = freezed,
    Object newcases = freezed,
    Object newdeaths = freezed,
  }) {
    return _then(_News(
      location: location == freezed ? _value.location : location as String,
      newcases: newcases == freezed ? _value.newcases : newcases as String,
      newdeaths: newdeaths == freezed ? _value.newdeaths : newdeaths as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_News implements _News {
  const _$_News({this.location, this.newcases, this.newdeaths});

  factory _$_News.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsFromJson(json);

  @override
  final String location;
  @override
  final String newcases;
  @override
  final String newdeaths;

  @override
  String toString() {
    return 'News(location: $location, newcases: $newcases, newdeaths: $newdeaths)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _News &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.newcases, newcases) ||
                const DeepCollectionEquality()
                    .equals(other.newcases, newcases)) &&
            (identical(other.newdeaths, newdeaths) ||
                const DeepCollectionEquality()
                    .equals(other.newdeaths, newdeaths)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(newcases) ^
      const DeepCollectionEquality().hash(newdeaths);

  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsToJson(this);
  }
}

abstract class _News implements News {
  const factory _News({String location, String newcases, String newdeaths}) =
      _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  String get location;
  @override
  String get newcases;
  @override
  String get newdeaths;
  @override
  _$NewsCopyWith<_News> get copyWith;
}
