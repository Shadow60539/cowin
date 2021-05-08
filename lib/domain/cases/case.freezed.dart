// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Case _$CaseFromJson(Map<String, dynamic> json) {
  return _Case.fromJson(json);
}

/// @nodoc
class _$CaseTearOff {
  const _$CaseTearOff();

// ignore: unused_element
  _Case call(
      {int recovered,
      int deaths,
      int confirmed,
      DateTime lastChecked,
      DateTime lastReported,
      String location}) {
    return _Case(
      recovered: recovered,
      deaths: deaths,
      confirmed: confirmed,
      lastChecked: lastChecked,
      lastReported: lastReported,
      location: location,
    );
  }

// ignore: unused_element
  Case fromJson(Map<String, Object> json) {
    return Case.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Case = _$CaseTearOff();

/// @nodoc
mixin _$Case {
  int get recovered;
  int get deaths;
  int get confirmed;
  DateTime get lastChecked;
  DateTime get lastReported;
  String get location;

  Map<String, dynamic> toJson();
  $CaseCopyWith<Case> get copyWith;
}

/// @nodoc
abstract class $CaseCopyWith<$Res> {
  factory $CaseCopyWith(Case value, $Res Function(Case) then) =
      _$CaseCopyWithImpl<$Res>;
  $Res call(
      {int recovered,
      int deaths,
      int confirmed,
      DateTime lastChecked,
      DateTime lastReported,
      String location});
}

/// @nodoc
class _$CaseCopyWithImpl<$Res> implements $CaseCopyWith<$Res> {
  _$CaseCopyWithImpl(this._value, this._then);

  final Case _value;
  // ignore: unused_field
  final $Res Function(Case) _then;

  @override
  $Res call({
    Object recovered = freezed,
    Object deaths = freezed,
    Object confirmed = freezed,
    Object lastChecked = freezed,
    Object lastReported = freezed,
    Object location = freezed,
  }) {
    return _then(_value.copyWith(
      recovered: recovered == freezed ? _value.recovered : recovered as int,
      deaths: deaths == freezed ? _value.deaths : deaths as int,
      confirmed: confirmed == freezed ? _value.confirmed : confirmed as int,
      lastChecked:
          lastChecked == freezed ? _value.lastChecked : lastChecked as DateTime,
      lastReported: lastReported == freezed
          ? _value.lastReported
          : lastReported as DateTime,
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

/// @nodoc
abstract class _$CaseCopyWith<$Res> implements $CaseCopyWith<$Res> {
  factory _$CaseCopyWith(_Case value, $Res Function(_Case) then) =
      __$CaseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int recovered,
      int deaths,
      int confirmed,
      DateTime lastChecked,
      DateTime lastReported,
      String location});
}

/// @nodoc
class __$CaseCopyWithImpl<$Res> extends _$CaseCopyWithImpl<$Res>
    implements _$CaseCopyWith<$Res> {
  __$CaseCopyWithImpl(_Case _value, $Res Function(_Case) _then)
      : super(_value, (v) => _then(v as _Case));

  @override
  _Case get _value => super._value as _Case;

  @override
  $Res call({
    Object recovered = freezed,
    Object deaths = freezed,
    Object confirmed = freezed,
    Object lastChecked = freezed,
    Object lastReported = freezed,
    Object location = freezed,
  }) {
    return _then(_Case(
      recovered: recovered == freezed ? _value.recovered : recovered as int,
      deaths: deaths == freezed ? _value.deaths : deaths as int,
      confirmed: confirmed == freezed ? _value.confirmed : confirmed as int,
      lastChecked:
          lastChecked == freezed ? _value.lastChecked : lastChecked as DateTime,
      lastReported: lastReported == freezed
          ? _value.lastReported
          : lastReported as DateTime,
      location: location == freezed ? _value.location : location as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Case implements _Case {
  const _$_Case(
      {this.recovered,
      this.deaths,
      this.confirmed,
      this.lastChecked,
      this.lastReported,
      this.location});

  factory _$_Case.fromJson(Map<String, dynamic> json) =>
      _$_$_CaseFromJson(json);

  @override
  final int recovered;
  @override
  final int deaths;
  @override
  final int confirmed;
  @override
  final DateTime lastChecked;
  @override
  final DateTime lastReported;
  @override
  final String location;

  @override
  String toString() {
    return 'Case(recovered: $recovered, deaths: $deaths, confirmed: $confirmed, lastChecked: $lastChecked, lastReported: $lastReported, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Case &&
            (identical(other.recovered, recovered) ||
                const DeepCollectionEquality()
                    .equals(other.recovered, recovered)) &&
            (identical(other.deaths, deaths) ||
                const DeepCollectionEquality().equals(other.deaths, deaths)) &&
            (identical(other.confirmed, confirmed) ||
                const DeepCollectionEquality()
                    .equals(other.confirmed, confirmed)) &&
            (identical(other.lastChecked, lastChecked) ||
                const DeepCollectionEquality()
                    .equals(other.lastChecked, lastChecked)) &&
            (identical(other.lastReported, lastReported) ||
                const DeepCollectionEquality()
                    .equals(other.lastReported, lastReported)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(recovered) ^
      const DeepCollectionEquality().hash(deaths) ^
      const DeepCollectionEquality().hash(confirmed) ^
      const DeepCollectionEquality().hash(lastChecked) ^
      const DeepCollectionEquality().hash(lastReported) ^
      const DeepCollectionEquality().hash(location);

  @override
  _$CaseCopyWith<_Case> get copyWith =>
      __$CaseCopyWithImpl<_Case>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CaseToJson(this);
  }
}

abstract class _Case implements Case {
  const factory _Case(
      {int recovered,
      int deaths,
      int confirmed,
      DateTime lastChecked,
      DateTime lastReported,
      String location}) = _$_Case;

  factory _Case.fromJson(Map<String, dynamic> json) = _$_Case.fromJson;

  @override
  int get recovered;
  @override
  int get deaths;
  @override
  int get confirmed;
  @override
  DateTime get lastChecked;
  @override
  DateTime get lastReported;
  @override
  String get location;
  @override
  _$CaseCopyWith<_Case> get copyWith;
}
