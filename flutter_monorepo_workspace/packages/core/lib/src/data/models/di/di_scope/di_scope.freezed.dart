// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'di_scope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DiScope {
  /// name of scope.
  String get name => throw _privateConstructorUsedError;

  /// scope factory.
  GetIt Function() get factory => throw _privateConstructorUsedError;

  /// drop scope on dispose.
  bool get dispose => throw _privateConstructorUsedError;

  /// drop scope on lifeCycle-Owner dispose.
  bool get disposeOwner => throw _privateConstructorUsedError;

  /// instances that [DiScope] depends on, this dependencies will be registered before register this [DiScope].
  List<DiScope> get dependencies => throw _privateConstructorUsedError;

  /// Create a copy of DiScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiScopeCopyWith<DiScope> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiScopeCopyWith<$Res> {
  factory $DiScopeCopyWith(DiScope value, $Res Function(DiScope) then) = _$DiScopeCopyWithImpl<$Res, DiScope>;
  @useResult
  $Res call({String name, GetIt Function() factory, bool dispose, bool disposeOwner, List<DiScope> dependencies});
}

/// @nodoc
class _$DiScopeCopyWithImpl<$Res, $Val extends DiScope> implements $DiScopeCopyWith<$Res> {
  _$DiScopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? factory = null,
    Object? dispose = null,
    Object? disposeOwner = null,
    Object? dependencies = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      factory: null == factory
          ? _value.factory
          : factory // ignore: cast_nullable_to_non_nullable
              as GetIt Function(),
      dispose: null == dispose
          ? _value.dispose
          : dispose // ignore: cast_nullable_to_non_nullable
              as bool,
      disposeOwner: null == disposeOwner
          ? _value.disposeOwner
          : disposeOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DiScope>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiScopeImplCopyWith<$Res> implements $DiScopeCopyWith<$Res> {
  factory _$$DiScopeImplCopyWith(_$DiScopeImpl value, $Res Function(_$DiScopeImpl) then) = __$$DiScopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, GetIt Function() factory, bool dispose, bool disposeOwner, List<DiScope> dependencies});
}

/// @nodoc
class __$$DiScopeImplCopyWithImpl<$Res> extends _$DiScopeCopyWithImpl<$Res, _$DiScopeImpl> implements _$$DiScopeImplCopyWith<$Res> {
  __$$DiScopeImplCopyWithImpl(_$DiScopeImpl _value, $Res Function(_$DiScopeImpl) _then) : super(_value, _then);

  /// Create a copy of DiScope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? factory = null,
    Object? dispose = null,
    Object? disposeOwner = null,
    Object? dependencies = null,
  }) {
    return _then(_$DiScopeImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      factory: null == factory
          ? _value.factory
          : factory // ignore: cast_nullable_to_non_nullable
              as GetIt Function(),
      dispose: null == dispose
          ? _value.dispose
          : dispose // ignore: cast_nullable_to_non_nullable
              as bool,
      disposeOwner: null == disposeOwner
          ? _value.disposeOwner
          : disposeOwner // ignore: cast_nullable_to_non_nullable
              as bool,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DiScope>,
    ));
  }
}

/// @nodoc

class _$DiScopeImpl implements _DiScope {
  const _$DiScopeImpl(
      {required this.name,
      required this.factory,
      this.dispose = false,
      this.disposeOwner = true,
      final List<DiScope> dependencies = const []})
      : _dependencies = dependencies;

  /// name of scope.
  @override
  final String name;

  /// scope factory.
  @override
  final GetIt Function() factory;

  /// drop scope on dispose.
  @override
  @JsonKey()
  final bool dispose;

  /// drop scope on lifeCycle-Owner dispose.
  @override
  @JsonKey()
  final bool disposeOwner;

  /// instances that [DiScope] depends on, this dependencies will be registered before register this [DiScope].
  final List<DiScope> _dependencies;

  /// instances that [DiScope] depends on, this dependencies will be registered before register this [DiScope].
  @override
  @JsonKey()
  List<DiScope> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'DiScope(name: $name, factory: $factory, dispose: $dispose, disposeOwner: $disposeOwner, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiScopeImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.factory, factory) || other.factory == factory) &&
            (identical(other.dispose, dispose) || other.dispose == dispose) &&
            (identical(other.disposeOwner, disposeOwner) || other.disposeOwner == disposeOwner) &&
            const DeepCollectionEquality().equals(other._dependencies, _dependencies));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, factory, dispose, disposeOwner, const DeepCollectionEquality().hash(_dependencies));

  /// Create a copy of DiScope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiScopeImplCopyWith<_$DiScopeImpl> get copyWith => __$$DiScopeImplCopyWithImpl<_$DiScopeImpl>(this, _$identity);
}

abstract class _DiScope implements DiScope {
  const factory _DiScope(
      {required final String name,
      required final GetIt Function() factory,
      final bool dispose,
      final bool disposeOwner,
      final List<DiScope> dependencies}) = _$DiScopeImpl;

  /// name of scope.
  @override
  String get name;

  /// scope factory.
  @override
  GetIt Function() get factory;

  /// drop scope on dispose.
  @override
  bool get dispose;

  /// drop scope on lifeCycle-Owner dispose.
  @override
  bool get disposeOwner;

  /// instances that [DiScope] depends on, this dependencies will be registered before register this [DiScope].
  @override
  List<DiScope> get dependencies;

  /// Create a copy of DiScope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiScopeImplCopyWith<_$DiScopeImpl> get copyWith => throw _privateConstructorUsedError;
}
