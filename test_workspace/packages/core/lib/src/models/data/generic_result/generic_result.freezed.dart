// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Result<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<T, $Res> {
  factory $ResultCopyWith(Result<T> value, $Res Function(Result<T>) then) =
      _$ResultCopyWithImpl<T, $Res, Result<T>>;
}

/// @nodoc
class _$ResultCopyWithImpl<T, $Res, $Val extends Result<T>>
    implements $ResultCopyWith<T, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultIdleImplCopyWith<T, $Res> {
  factory _$$ResultIdleImplCopyWith(
          _$ResultIdleImpl<T> value, $Res Function(_$ResultIdleImpl<T>) then) =
      __$$ResultIdleImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$ResultIdleImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultIdleImpl<T>>
    implements _$$ResultIdleImplCopyWith<T, $Res> {
  __$$ResultIdleImplCopyWithImpl(
      _$ResultIdleImpl<T> _value, $Res Function(_$ResultIdleImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultIdleImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ResultIdleImpl<T> extends ResultIdle<T> {
  const _$ResultIdleImpl({this.data}) : super._();

  @override
  final T? data;

  @override
  String toString() {
    return 'Result<$T>.idle(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultIdleImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultIdleImplCopyWith<T, _$ResultIdleImpl<T>> get copyWith =>
      __$$ResultIdleImplCopyWithImpl<T, _$ResultIdleImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return idle(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return idle?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class ResultIdle<T> extends Result<T> {
  const factory ResultIdle({final T? data}) = _$ResultIdleImpl<T>;
  const ResultIdle._() : super._();

  T? get data;
  @JsonKey(ignore: true)
  _$$ResultIdleImplCopyWith<T, _$ResultIdleImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultLoadingImplCopyWith<T, $Res> {
  factory _$$ResultLoadingImplCopyWith(_$ResultLoadingImpl<T> value,
          $Res Function(_$ResultLoadingImpl<T>) then) =
      __$$ResultLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ResultLoadingImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultLoadingImpl<T>>
    implements _$$ResultLoadingImplCopyWith<T, $Res> {
  __$$ResultLoadingImplCopyWithImpl(_$ResultLoadingImpl<T> _value,
      $Res Function(_$ResultLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResultLoadingImpl<T> extends ResultLoading<T> {
  const _$ResultLoadingImpl() : super._();

  @override
  String toString() {
    return 'Result<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResultLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ResultLoading<T> extends Result<T> {
  const factory ResultLoading() = _$ResultLoadingImpl<T>;
  const ResultLoading._() : super._();
}

/// @nodoc
abstract class _$$ResultDataImplCopyWith<T, $Res> {
  factory _$$ResultDataImplCopyWith(
          _$ResultDataImpl<T> value, $Res Function(_$ResultDataImpl<T>) then) =
      __$$ResultDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ResultDataImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultDataImpl<T>>
    implements _$$ResultDataImplCopyWith<T, $Res> {
  __$$ResultDataImplCopyWithImpl(
      _$ResultDataImpl<T> _value, $Res Function(_$ResultDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ResultDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ResultDataImpl<T> extends ResultData<T> {
  const _$ResultDataImpl(this.data) : super._();

  @override
  final T data;

  @override
  String toString() {
    return 'Result<$T>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataImplCopyWith<T, _$ResultDataImpl<T>> get copyWith =>
      __$$ResultDataImplCopyWithImpl<T, _$ResultDataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ResultData<T> extends Result<T> {
  const factory ResultData(final T data) = _$ResultDataImpl<T>;
  const ResultData._() : super._();

  T get data;
  @JsonKey(ignore: true)
  _$$ResultDataImplCopyWith<T, _$ResultDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResultErrorImplCopyWith<T, $Res> {
  factory _$$ResultErrorImplCopyWith(_$ResultErrorImpl<T> value,
          $Res Function(_$ResultErrorImpl<T>) then) =
      __$$ResultErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$ResultErrorImplCopyWithImpl<T, $Res>
    extends _$ResultCopyWithImpl<T, $Res, _$ResultErrorImpl<T>>
    implements _$$ResultErrorImplCopyWith<T, $Res> {
  __$$ResultErrorImplCopyWithImpl(
      _$ResultErrorImpl<T> _value, $Res Function(_$ResultErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ResultErrorImpl<T>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ResultErrorImpl<T> extends ResultError<T> {
  const _$ResultErrorImpl(this.error) : super._();

  @override
  final String? error;

  @override
  String toString() {
    return 'Result<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultErrorImplCopyWith<T, _$ResultErrorImpl<T>> get copyWith =>
      __$$ResultErrorImplCopyWithImpl<T, _$ResultErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? data) idle,
    required TResult Function() loading,
    required TResult Function(T data) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? data)? idle,
    TResult? Function()? loading,
    TResult? Function(T data)? data,
    TResult? Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? data)? idle,
    TResult Function()? loading,
    TResult Function(T data)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ResultIdle<T> value) idle,
    required TResult Function(ResultLoading<T> value) loading,
    required TResult Function(ResultData<T> value) data,
    required TResult Function(ResultError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ResultIdle<T> value)? idle,
    TResult? Function(ResultLoading<T> value)? loading,
    TResult? Function(ResultData<T> value)? data,
    TResult? Function(ResultError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ResultIdle<T> value)? idle,
    TResult Function(ResultLoading<T> value)? loading,
    TResult Function(ResultData<T> value)? data,
    TResult Function(ResultError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ResultError<T> extends Result<T> {
  const factory ResultError(final String? error) = _$ResultErrorImpl<T>;
  const ResultError._() : super._();

  String? get error;
  @JsonKey(ignore: true)
  _$$ResultErrorImplCopyWith<T, _$ResultErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
