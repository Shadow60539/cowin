// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cases_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CasesEventTearOff {
  const _$CasesEventTearOff();

// ignore: unused_element
  GetTotalCases getTotalCases(String country) {
    return GetTotalCases(
      country,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CasesEvent = _$CasesEventTearOff();

/// @nodoc
mixin _$CasesEvent {
  String get country;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTotalCases(String country),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTotalCases(String country),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getTotalCases(GetTotalCases value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTotalCases(GetTotalCases value),
    @required Result orElse(),
  });

  $CasesEventCopyWith<CasesEvent> get copyWith;
}

/// @nodoc
abstract class $CasesEventCopyWith<$Res> {
  factory $CasesEventCopyWith(
          CasesEvent value, $Res Function(CasesEvent) then) =
      _$CasesEventCopyWithImpl<$Res>;
  $Res call({String country});
}

/// @nodoc
class _$CasesEventCopyWithImpl<$Res> implements $CasesEventCopyWith<$Res> {
  _$CasesEventCopyWithImpl(this._value, this._then);

  final CasesEvent _value;
  // ignore: unused_field
  final $Res Function(CasesEvent) _then;

  @override
  $Res call({
    Object country = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed ? _value.country : country as String,
    ));
  }
}

/// @nodoc
abstract class $GetTotalCasesCopyWith<$Res>
    implements $CasesEventCopyWith<$Res> {
  factory $GetTotalCasesCopyWith(
          GetTotalCases value, $Res Function(GetTotalCases) then) =
      _$GetTotalCasesCopyWithImpl<$Res>;
  @override
  $Res call({String country});
}

/// @nodoc
class _$GetTotalCasesCopyWithImpl<$Res> extends _$CasesEventCopyWithImpl<$Res>
    implements $GetTotalCasesCopyWith<$Res> {
  _$GetTotalCasesCopyWithImpl(
      GetTotalCases _value, $Res Function(GetTotalCases) _then)
      : super(_value, (v) => _then(v as GetTotalCases));

  @override
  GetTotalCases get _value => super._value as GetTotalCases;

  @override
  $Res call({
    Object country = freezed,
  }) {
    return _then(GetTotalCases(
      country == freezed ? _value.country : country as String,
    ));
  }
}

/// @nodoc
class _$GetTotalCases implements GetTotalCases {
  const _$GetTotalCases(this.country) : assert(country != null);

  @override
  final String country;

  @override
  String toString() {
    return 'CasesEvent.getTotalCases(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetTotalCases &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @override
  $GetTotalCasesCopyWith<GetTotalCases> get copyWith =>
      _$GetTotalCasesCopyWithImpl<GetTotalCases>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getTotalCases(String country),
  }) {
    assert(getTotalCases != null);
    return getTotalCases(country);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getTotalCases(String country),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTotalCases != null) {
      return getTotalCases(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getTotalCases(GetTotalCases value),
  }) {
    assert(getTotalCases != null);
    return getTotalCases(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getTotalCases(GetTotalCases value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getTotalCases != null) {
      return getTotalCases(this);
    }
    return orElse();
  }
}

abstract class GetTotalCases implements CasesEvent {
  const factory GetTotalCases(String country) = _$GetTotalCases;

  @override
  String get country;
  @override
  $GetTotalCasesCopyWith<GetTotalCases> get copyWith;
}

/// @nodoc
class _$CasesStateTearOff {
  const _$CasesStateTearOff();

// ignore: unused_element
  _CasesState call({Case cases, String selectedCountry}) {
    return _CasesState(
      cases: cases,
      selectedCountry: selectedCountry,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CasesState = _$CasesStateTearOff();

/// @nodoc
mixin _$CasesState {
  Case get cases;
  String get selectedCountry;

  $CasesStateCopyWith<CasesState> get copyWith;
}

/// @nodoc
abstract class $CasesStateCopyWith<$Res> {
  factory $CasesStateCopyWith(
          CasesState value, $Res Function(CasesState) then) =
      _$CasesStateCopyWithImpl<$Res>;
  $Res call({Case cases, String selectedCountry});

  $CaseCopyWith<$Res> get cases;
}

/// @nodoc
class _$CasesStateCopyWithImpl<$Res> implements $CasesStateCopyWith<$Res> {
  _$CasesStateCopyWithImpl(this._value, this._then);

  final CasesState _value;
  // ignore: unused_field
  final $Res Function(CasesState) _then;

  @override
  $Res call({
    Object cases = freezed,
    Object selectedCountry = freezed,
  }) {
    return _then(_value.copyWith(
      cases: cases == freezed ? _value.cases : cases as Case,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry as String,
    ));
  }

  @override
  $CaseCopyWith<$Res> get cases {
    if (_value.cases == null) {
      return null;
    }
    return $CaseCopyWith<$Res>(_value.cases, (value) {
      return _then(_value.copyWith(cases: value));
    });
  }
}

/// @nodoc
abstract class _$CasesStateCopyWith<$Res> implements $CasesStateCopyWith<$Res> {
  factory _$CasesStateCopyWith(
          _CasesState value, $Res Function(_CasesState) then) =
      __$CasesStateCopyWithImpl<$Res>;
  @override
  $Res call({Case cases, String selectedCountry});

  @override
  $CaseCopyWith<$Res> get cases;
}

/// @nodoc
class __$CasesStateCopyWithImpl<$Res> extends _$CasesStateCopyWithImpl<$Res>
    implements _$CasesStateCopyWith<$Res> {
  __$CasesStateCopyWithImpl(
      _CasesState _value, $Res Function(_CasesState) _then)
      : super(_value, (v) => _then(v as _CasesState));

  @override
  _CasesState get _value => super._value as _CasesState;

  @override
  $Res call({
    Object cases = freezed,
    Object selectedCountry = freezed,
  }) {
    return _then(_CasesState(
      cases: cases == freezed ? _value.cases : cases as Case,
      selectedCountry: selectedCountry == freezed
          ? _value.selectedCountry
          : selectedCountry as String,
    ));
  }
}

/// @nodoc
class _$_CasesState implements _CasesState {
  const _$_CasesState({this.cases, this.selectedCountry});

  @override
  final Case cases;
  @override
  final String selectedCountry;

  @override
  String toString() {
    return 'CasesState(cases: $cases, selectedCountry: $selectedCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CasesState &&
            (identical(other.cases, cases) ||
                const DeepCollectionEquality().equals(other.cases, cases)) &&
            (identical(other.selectedCountry, selectedCountry) ||
                const DeepCollectionEquality()
                    .equals(other.selectedCountry, selectedCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cases) ^
      const DeepCollectionEquality().hash(selectedCountry);

  @override
  _$CasesStateCopyWith<_CasesState> get copyWith =>
      __$CasesStateCopyWithImpl<_CasesState>(this, _$identity);
}

abstract class _CasesState implements CasesState {
  const factory _CasesState({Case cases, String selectedCountry}) =
      _$_CasesState;

  @override
  Case get cases;
  @override
  String get selectedCountry;
  @override
  _$CasesStateCopyWith<_CasesState> get copyWith;
}
