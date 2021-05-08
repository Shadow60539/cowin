// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'case_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CaseFailureTearOff {
  const _$CaseFailureTearOff();

// ignore: unused_element
  _UnexpectedError unexpectedError() {
    return const _UnexpectedError();
  }

// ignore: unused_element
  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
// ignore: unused_element
const $CaseFailure = _$CaseFailureTearOff();

/// @nodoc
mixin _$CaseFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpectedError(),
    @required Result serverError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedError(),
    Result serverError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedError(_UnexpectedError value),
    @required Result serverError(_ServerError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedError(_UnexpectedError value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CaseFailureCopyWith<$Res> {
  factory $CaseFailureCopyWith(
          CaseFailure value, $Res Function(CaseFailure) then) =
      _$CaseFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CaseFailureCopyWithImpl<$Res> implements $CaseFailureCopyWith<$Res> {
  _$CaseFailureCopyWithImpl(this._value, this._then);

  final CaseFailure _value;
  // ignore: unused_field
  final $Res Function(CaseFailure) _then;
}

/// @nodoc
abstract class _$UnexpectedErrorCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res>
    extends _$CaseFailureCopyWithImpl<$Res>
    implements _$UnexpectedErrorCopyWith<$Res> {
  __$UnexpectedErrorCopyWithImpl(
      _UnexpectedError _value, $Res Function(_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _UnexpectedError));

  @override
  _UnexpectedError get _value => super._value as _UnexpectedError;
}

/// @nodoc
class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError();

  @override
  String toString() {
    return 'CaseFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpectedError(),
    @required Result serverError(),
  }) {
    assert(unexpectedError != null);
    assert(serverError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedError(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedError(_UnexpectedError value),
    @required Result serverError(_ServerError value),
  }) {
    assert(unexpectedError != null);
    assert(serverError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedError(_UnexpectedError value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements CaseFailure {
  const factory _UnexpectedError() = _$_UnexpectedError;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$CaseFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc
class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'CaseFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpectedError(),
    @required Result serverError(),
  }) {
    assert(unexpectedError != null);
    assert(serverError != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpectedError(),
    Result serverError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpectedError(_UnexpectedError value),
    @required Result serverError(_ServerError value),
  }) {
    assert(unexpectedError != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpectedError(_UnexpectedError value),
    Result serverError(_ServerError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements CaseFailure {
  const factory _ServerError() = _$_ServerError;
}
