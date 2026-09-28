// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dimensions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Dimensions {

@JsonKey(name: "width") num? get width;@JsonKey(name: "height") num? get height;@JsonKey(name: "depth") num? get depth;
/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DimensionsCopyWith<Dimensions> get copyWith => _$DimensionsCopyWithImpl<Dimensions>(this as Dimensions, _$identity);

  /// Serializes this Dimensions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dimensions&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,depth);

@override
String toString() {
  return 'Dimensions(width: $width, height: $height, depth: $depth)';
}


}

/// @nodoc
abstract mixin class $DimensionsCopyWith<$Res>  {
  factory $DimensionsCopyWith(Dimensions value, $Res Function(Dimensions) _then) = _$DimensionsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "width") num? width,@JsonKey(name: "height") num? height,@JsonKey(name: "depth") num? depth
});




}
/// @nodoc
class _$DimensionsCopyWithImpl<$Res>
    implements $DimensionsCopyWith<$Res> {
  _$DimensionsCopyWithImpl(this._self, this._then);

  final Dimensions _self;
  final $Res Function(Dimensions) _then;

/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = freezed,Object? height = freezed,Object? depth = freezed,}) {
  return _then(_self.copyWith(
width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as num?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as num?,depth: freezed == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [Dimensions].
extension DimensionsPatterns on Dimensions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dimensions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dimensions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dimensions value)  $default,){
final _that = this;
switch (_that) {
case _Dimensions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dimensions value)?  $default,){
final _that = this;
switch (_that) {
case _Dimensions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "width")  num? width, @JsonKey(name: "height")  num? height, @JsonKey(name: "depth")  num? depth)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dimensions() when $default != null:
return $default(_that.width,_that.height,_that.depth);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "width")  num? width, @JsonKey(name: "height")  num? height, @JsonKey(name: "depth")  num? depth)  $default,) {final _that = this;
switch (_that) {
case _Dimensions():
return $default(_that.width,_that.height,_that.depth);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "width")  num? width, @JsonKey(name: "height")  num? height, @JsonKey(name: "depth")  num? depth)?  $default,) {final _that = this;
switch (_that) {
case _Dimensions() when $default != null:
return $default(_that.width,_that.height,_that.depth);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Dimensions implements Dimensions {
  const _Dimensions({@JsonKey(name: "width") this.width, @JsonKey(name: "height") this.height, @JsonKey(name: "depth") this.depth});
  factory _Dimensions.fromJson(Map<String, dynamic> json) => _$DimensionsFromJson(json);

@override@JsonKey(name: "width") final  num? width;
@override@JsonKey(name: "height") final  num? height;
@override@JsonKey(name: "depth") final  num? depth;

/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DimensionsCopyWith<_Dimensions> get copyWith => __$DimensionsCopyWithImpl<_Dimensions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DimensionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dimensions&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.depth, depth) || other.depth == depth));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,depth);

@override
String toString() {
  return 'Dimensions(width: $width, height: $height, depth: $depth)';
}


}

/// @nodoc
abstract mixin class _$DimensionsCopyWith<$Res> implements $DimensionsCopyWith<$Res> {
  factory _$DimensionsCopyWith(_Dimensions value, $Res Function(_Dimensions) _then) = __$DimensionsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "width") num? width,@JsonKey(name: "height") num? height,@JsonKey(name: "depth") num? depth
});




}
/// @nodoc
class __$DimensionsCopyWithImpl<$Res>
    implements _$DimensionsCopyWith<$Res> {
  __$DimensionsCopyWithImpl(this._self, this._then);

  final _Dimensions _self;
  final $Res Function(_Dimensions) _then;

/// Create a copy of Dimensions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = freezed,Object? height = freezed,Object? depth = freezed,}) {
  return _then(_Dimensions(
width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as num?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as num?,depth: freezed == depth ? _self.depth : depth // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
