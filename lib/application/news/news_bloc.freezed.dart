// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewsEventTearOff {
  const _$NewsEventTearOff();

// ignore: unused_element
  GetLatesNews getLatestNews() {
    return const GetLatesNews();
  }
}

/// @nodoc
// ignore: unused_element
const $NewsEvent = _$NewsEventTearOff();

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getLatestNews(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getLatestNews(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getLatestNews(GetLatesNews value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getLatestNews(GetLatesNews value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res> implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  final NewsEvent _value;
  // ignore: unused_field
  final $Res Function(NewsEvent) _then;
}

/// @nodoc
abstract class $GetLatesNewsCopyWith<$Res> {
  factory $GetLatesNewsCopyWith(
          GetLatesNews value, $Res Function(GetLatesNews) then) =
      _$GetLatesNewsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetLatesNewsCopyWithImpl<$Res> extends _$NewsEventCopyWithImpl<$Res>
    implements $GetLatesNewsCopyWith<$Res> {
  _$GetLatesNewsCopyWithImpl(
      GetLatesNews _value, $Res Function(GetLatesNews) _then)
      : super(_value, (v) => _then(v as GetLatesNews));

  @override
  GetLatesNews get _value => super._value as GetLatesNews;
}

/// @nodoc
class _$GetLatesNews implements GetLatesNews {
  const _$GetLatesNews();

  @override
  String toString() {
    return 'NewsEvent.getLatestNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GetLatesNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getLatestNews(),
  }) {
    assert(getLatestNews != null);
    return getLatestNews();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getLatestNews(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getLatestNews != null) {
      return getLatestNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getLatestNews(GetLatesNews value),
  }) {
    assert(getLatestNews != null);
    return getLatestNews(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getLatestNews(GetLatesNews value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getLatestNews != null) {
      return getLatestNews(this);
    }
    return orElse();
  }
}

abstract class GetLatesNews implements NewsEvent {
  const factory GetLatesNews() = _$GetLatesNews;
}

/// @nodoc
class _$NewsStateTearOff {
  const _$NewsStateTearOff();

// ignore: unused_element
  _NewsState call({List<News> listOfNews}) {
    return _NewsState(
      listOfNews: listOfNews,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewsState = _$NewsStateTearOff();

/// @nodoc
mixin _$NewsState {
  List<News> get listOfNews;

  $NewsStateCopyWith<NewsState> get copyWith;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res>;
  $Res call({List<News> listOfNews});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res> implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  final NewsState _value;
  // ignore: unused_field
  final $Res Function(NewsState) _then;

  @override
  $Res call({
    Object listOfNews = freezed,
  }) {
    return _then(_value.copyWith(
      listOfNews:
          listOfNews == freezed ? _value.listOfNews : listOfNews as List<News>,
    ));
  }
}

/// @nodoc
abstract class _$NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$NewsStateCopyWith(
          _NewsState value, $Res Function(_NewsState) then) =
      __$NewsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<News> listOfNews});
}

/// @nodoc
class __$NewsStateCopyWithImpl<$Res> extends _$NewsStateCopyWithImpl<$Res>
    implements _$NewsStateCopyWith<$Res> {
  __$NewsStateCopyWithImpl(_NewsState _value, $Res Function(_NewsState) _then)
      : super(_value, (v) => _then(v as _NewsState));

  @override
  _NewsState get _value => super._value as _NewsState;

  @override
  $Res call({
    Object listOfNews = freezed,
  }) {
    return _then(_NewsState(
      listOfNews:
          listOfNews == freezed ? _value.listOfNews : listOfNews as List<News>,
    ));
  }
}

/// @nodoc
class _$_NewsState implements _NewsState {
  const _$_NewsState({this.listOfNews});

  @override
  final List<News> listOfNews;

  @override
  String toString() {
    return 'NewsState(listOfNews: $listOfNews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsState &&
            (identical(other.listOfNews, listOfNews) ||
                const DeepCollectionEquality()
                    .equals(other.listOfNews, listOfNews)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listOfNews);

  @override
  _$NewsStateCopyWith<_NewsState> get copyWith =>
      __$NewsStateCopyWithImpl<_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState({List<News> listOfNews}) = _$_NewsState;

  @override
  List<News> get listOfNews;
  @override
  _$NewsStateCopyWith<_NewsState> get copyWith;
}
