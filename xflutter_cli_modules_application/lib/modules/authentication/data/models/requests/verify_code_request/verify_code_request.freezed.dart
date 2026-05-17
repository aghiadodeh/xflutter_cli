// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyCodeRequest {

@JsonKey(name: 'email') String? get email;@JsonKey(name: 'verification_code') String? get verificationCode;
/// Create a copy of VerifyCodeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyCodeRequestCopyWith<VerifyCodeRequest> get copyWith => _$VerifyCodeRequestCopyWithImpl<VerifyCodeRequest>(this as VerifyCodeRequest, _$identity);

  /// Serializes this VerifyCodeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyCodeRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,verificationCode);

@override
String toString() {
  return 'VerifyCodeRequest(email: $email, verificationCode: $verificationCode)';
}


}

/// @nodoc
abstract mixin class $VerifyCodeRequestCopyWith<$Res>  {
  factory $VerifyCodeRequestCopyWith(VerifyCodeRequest value, $Res Function(VerifyCodeRequest) _then) = _$VerifyCodeRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'email') String? email,@JsonKey(name: 'verification_code') String? verificationCode
});




}
/// @nodoc
class _$VerifyCodeRequestCopyWithImpl<$Res>
    implements $VerifyCodeRequestCopyWith<$Res> {
  _$VerifyCodeRequestCopyWithImpl(this._self, this._then);

  final VerifyCodeRequest _self;
  final $Res Function(VerifyCodeRequest) _then;

/// Create a copy of VerifyCodeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? verificationCode = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,verificationCode: freezed == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyCodeRequest].
extension VerifyCodeRequestPatterns on VerifyCodeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyCodeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyCodeRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyCodeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyCodeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String? email, @JsonKey(name: 'verification_code')  String? verificationCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
return $default(_that.email,_that.verificationCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String? email, @JsonKey(name: 'verification_code')  String? verificationCode)  $default,) {final _that = this;
switch (_that) {
case _VerifyCodeRequest():
return $default(_that.email,_that.verificationCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'email')  String? email, @JsonKey(name: 'verification_code')  String? verificationCode)?  $default,) {final _that = this;
switch (_that) {
case _VerifyCodeRequest() when $default != null:
return $default(_that.email,_that.verificationCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyCodeRequest implements VerifyCodeRequest {
  const _VerifyCodeRequest({@JsonKey(name: 'email') this.email, @JsonKey(name: 'verification_code') this.verificationCode});
  factory _VerifyCodeRequest.fromJson(Map<String, dynamic> json) => _$VerifyCodeRequestFromJson(json);

@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'verification_code') final  String? verificationCode;

/// Create a copy of VerifyCodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyCodeRequestCopyWith<_VerifyCodeRequest> get copyWith => __$VerifyCodeRequestCopyWithImpl<_VerifyCodeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyCodeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyCodeRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.verificationCode, verificationCode) || other.verificationCode == verificationCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,verificationCode);

@override
String toString() {
  return 'VerifyCodeRequest(email: $email, verificationCode: $verificationCode)';
}


}

/// @nodoc
abstract mixin class _$VerifyCodeRequestCopyWith<$Res> implements $VerifyCodeRequestCopyWith<$Res> {
  factory _$VerifyCodeRequestCopyWith(_VerifyCodeRequest value, $Res Function(_VerifyCodeRequest) _then) = __$VerifyCodeRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'email') String? email,@JsonKey(name: 'verification_code') String? verificationCode
});




}
/// @nodoc
class __$VerifyCodeRequestCopyWithImpl<$Res>
    implements _$VerifyCodeRequestCopyWith<$Res> {
  __$VerifyCodeRequestCopyWithImpl(this._self, this._then);

  final _VerifyCodeRequest _self;
  final $Res Function(_VerifyCodeRequest) _then;

/// Create a copy of VerifyCodeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? verificationCode = freezed,}) {
  return _then(_VerifyCodeRequest(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,verificationCode: freezed == verificationCode ? _self.verificationCode : verificationCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
