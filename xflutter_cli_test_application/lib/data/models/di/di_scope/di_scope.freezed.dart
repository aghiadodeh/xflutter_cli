// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'di_scope.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DiScope {

/// name of scope.
 String get name;/// factory method to register dependencies of the scope.
 GetIt Function() get factory;/// drop scope on dispose.
 bool get dispose;/// drop scope on lifeCycle-Owner dispose.
 bool get disposeByOwner;/// instances that [DiScope] depends on, this dependencies will be registered before register this [DiScope].
 List<DiScope> get dependencies;
/// Create a copy of DiScope
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DiScopeCopyWith<DiScope> get copyWith => _$DiScopeCopyWithImpl<DiScope>(this as DiScope, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DiScope&&(identical(other.name, name) || other.name == name)&&(identical(other.factory, factory) || other.factory == factory)&&(identical(other.dispose, dispose) || other.dispose == dispose)&&(identical(other.disposeByOwner, disposeByOwner) || other.disposeByOwner == disposeByOwner)&&const DeepCollectionEquality().equals(other.dependencies, dependencies));
}


@override
int get hashCode => Object.hash(runtimeType,name,factory,dispose,disposeByOwner,const DeepCollectionEquality().hash(dependencies));

@override
String toString() {
  return 'DiScope(name: $name, factory: $factory, dispose: $dispose, disposeByOwner: $disposeByOwner, dependencies: $dependencies)';
}


}

/// @nodoc
abstract mixin class $DiScopeCopyWith<$Res>  {
  factory $DiScopeCopyWith(DiScope value, $Res Function(DiScope) _then) = _$DiScopeCopyWithImpl;
@useResult
$Res call({
 String name, GetIt Function() factory, bool dispose, bool disposeByOwner, List<DiScope> dependencies
});




}
/// @nodoc
class _$DiScopeCopyWithImpl<$Res>
    implements $DiScopeCopyWith<$Res> {
  _$DiScopeCopyWithImpl(this._self, this._then);

  final DiScope _self;
  final $Res Function(DiScope) _then;

/// Create a copy of DiScope
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? factory = null,Object? dispose = null,Object? disposeByOwner = null,Object? dependencies = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,factory: null == factory ? _self.factory : factory // ignore: cast_nullable_to_non_nullable
as GetIt Function(),dispose: null == dispose ? _self.dispose : dispose // ignore: cast_nullable_to_non_nullable
as bool,disposeByOwner: null == disposeByOwner ? _self.disposeByOwner : disposeByOwner // ignore: cast_nullable_to_non_nullable
as bool,dependencies: null == dependencies ? _self.dependencies : dependencies // ignore: cast_nullable_to_non_nullable
as List<DiScope>,
  ));
}

}


/// Adds pattern-matching-related methods to [DiScope].
extension DiScopePatterns on DiScope {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DiScope value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DiScope() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DiScope value)  $default,){
final _that = this;
switch (_that) {
case _DiScope():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DiScope value)?  $default,){
final _that = this;
switch (_that) {
case _DiScope() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  GetIt Function() factory,  bool dispose,  bool disposeByOwner,  List<DiScope> dependencies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DiScope() when $default != null:
return $default(_that.name,_that.factory,_that.dispose,_that.disposeByOwner,_that.dependencies);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  GetIt Function() factory,  bool dispose,  bool disposeByOwner,  List<DiScope> dependencies)  $default,) {final _that = this;
switch (_that) {
case _DiScope():
return $default(_that.name,_that.factory,_that.dispose,_that.disposeByOwner,_that.dependencies);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  GetIt Function() factory,  bool dispose,  bool disposeByOwner,  List<DiScope> dependencies)?  $default,) {final _that = this;
switch (_that) {
case _DiScope() when $default != null:
return $default(_that.name,_that.factory,_that.dispose,_that.disposeByOwner,_that.dependencies);case _:
  return null;

}
}

}

/// @nodoc


class _DiScope implements DiScope {
  const _DiScope({required this.name, required this.factory, this.dispose = false, this.disposeByOwner = true, final  List<DiScope> dependencies = const []}): _dependencies = dependencies;
  

/// name of scope.
@override final  String name;
/// factory method to register dependencies of the scope.
@override final  GetIt Function() factory;
/// drop scope on dispose.
@override@JsonKey() final  bool dispose;
/// drop scope on lifeCycle-Owner dispose.
@override@JsonKey() final  bool disposeByOwner;
/// instances that [DiScope] depends on, this dependencies will be registered before register this [DiScope].
 final  List<DiScope> _dependencies;
/// instances that [DiScope] depends on, this dependencies will be registered before register this [DiScope].
@override@JsonKey() List<DiScope> get dependencies {
  if (_dependencies is EqualUnmodifiableListView) return _dependencies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_dependencies);
}


/// Create a copy of DiScope
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DiScopeCopyWith<_DiScope> get copyWith => __$DiScopeCopyWithImpl<_DiScope>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DiScope&&(identical(other.name, name) || other.name == name)&&(identical(other.factory, factory) || other.factory == factory)&&(identical(other.dispose, dispose) || other.dispose == dispose)&&(identical(other.disposeByOwner, disposeByOwner) || other.disposeByOwner == disposeByOwner)&&const DeepCollectionEquality().equals(other._dependencies, _dependencies));
}


@override
int get hashCode => Object.hash(runtimeType,name,factory,dispose,disposeByOwner,const DeepCollectionEquality().hash(_dependencies));

@override
String toString() {
  return 'DiScope(name: $name, factory: $factory, dispose: $dispose, disposeByOwner: $disposeByOwner, dependencies: $dependencies)';
}


}

/// @nodoc
abstract mixin class _$DiScopeCopyWith<$Res> implements $DiScopeCopyWith<$Res> {
  factory _$DiScopeCopyWith(_DiScope value, $Res Function(_DiScope) _then) = __$DiScopeCopyWithImpl;
@override @useResult
$Res call({
 String name, GetIt Function() factory, bool dispose, bool disposeByOwner, List<DiScope> dependencies
});




}
/// @nodoc
class __$DiScopeCopyWithImpl<$Res>
    implements _$DiScopeCopyWith<$Res> {
  __$DiScopeCopyWithImpl(this._self, this._then);

  final _DiScope _self;
  final $Res Function(_DiScope) _then;

/// Create a copy of DiScope
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? factory = null,Object? dispose = null,Object? disposeByOwner = null,Object? dependencies = null,}) {
  return _then(_DiScope(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,factory: null == factory ? _self.factory : factory // ignore: cast_nullable_to_non_nullable
as GetIt Function(),dispose: null == dispose ? _self.dispose : dispose // ignore: cast_nullable_to_non_nullable
as bool,disposeByOwner: null == disposeByOwner ? _self.disposeByOwner : disposeByOwner // ignore: cast_nullable_to_non_nullable
as bool,dependencies: null == dependencies ? _self._dependencies : dependencies // ignore: cast_nullable_to_non_nullable
as List<DiScope>,
  ));
}


}

// dart format on
