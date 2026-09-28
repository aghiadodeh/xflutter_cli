// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetPasswordRequest {

@JsonKey(name: 'email') String? get email;@JsonKey(name: 'reset_password_code') String? get resetPasswordCode;@JsonKey(name: 'new_password') String? get newPassword;
/// Create a copy of ResetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordRequestCopyWith<ResetPasswordRequest> get copyWith => _$ResetPasswordRequestCopyWithImpl<ResetPasswordRequest>(this as ResetPasswordRequest, _$identity);

  /// Serializes this ResetPasswordRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.resetPasswordCode, resetPasswordCode) || other.resetPasswordCode == resetPasswordCode)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,resetPasswordCode,newPassword);

@override
String toString() {
  return 'ResetPasswordRequest(email: $email, resetPasswordCode: $resetPasswordCode, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordRequestCopyWith<$Res>  {
  factory $ResetPasswordRequestCopyWith(ResetPasswordRequest value, $Res Function(ResetPasswordRequest) _then) = _$ResetPasswordRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'email') String? email,@JsonKey(name: 'reset_password_code') String? resetPasswordCode,@JsonKey(name: 'new_password') String? newPassword
});




}
/// @nodoc
class _$ResetPasswordRequestCopyWithImpl<$Res>
    implements $ResetPasswordRequestCopyWith<$Res> {
  _$ResetPasswordRequestCopyWithImpl(this._self, this._then);

  final ResetPasswordRequest _self;
  final $Res Function(ResetPasswordRequest) _then;

/// Create a copy of ResetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = freezed,Object? resetPasswordCode = freezed,Object? newPassword = freezed,}) {
  return _then(_self.copyWith(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,resetPasswordCode: freezed == resetPasswordCode ? _self.resetPasswordCode : resetPasswordCode // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasswordRequest].
extension ResetPasswordRequestPatterns on ResetPasswordRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordRequest value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String? email, @JsonKey(name: 'reset_password_code')  String? resetPasswordCode, @JsonKey(name: 'new_password')  String? newPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordRequest() when $default != null:
return $default(_that.email,_that.resetPasswordCode,_that.newPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'email')  String? email, @JsonKey(name: 'reset_password_code')  String? resetPasswordCode, @JsonKey(name: 'new_password')  String? newPassword)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordRequest():
return $default(_that.email,_that.resetPasswordCode,_that.newPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'email')  String? email, @JsonKey(name: 'reset_password_code')  String? resetPasswordCode, @JsonKey(name: 'new_password')  String? newPassword)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordRequest() when $default != null:
return $default(_that.email,_that.resetPasswordCode,_that.newPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResetPasswordRequest implements ResetPasswordRequest {
  const _ResetPasswordRequest({@JsonKey(name: 'email') this.email, @JsonKey(name: 'reset_password_code') this.resetPasswordCode, @JsonKey(name: 'new_password') this.newPassword});
  factory _ResetPasswordRequest.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);

@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'reset_password_code') final  String? resetPasswordCode;
@override@JsonKey(name: 'new_password') final  String? newPassword;

/// Create a copy of ResetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordRequestCopyWith<_ResetPasswordRequest> get copyWith => __$ResetPasswordRequestCopyWithImpl<_ResetPasswordRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResetPasswordRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordRequest&&(identical(other.email, email) || other.email == email)&&(identical(other.resetPasswordCode, resetPasswordCode) || other.resetPasswordCode == resetPasswordCode)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,resetPasswordCode,newPassword);

@override
String toString() {
  return 'ResetPasswordRequest(email: $email, resetPasswordCode: $resetPasswordCode, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordRequestCopyWith<$Res> implements $ResetPasswordRequestCopyWith<$Res> {
  factory _$ResetPasswordRequestCopyWith(_ResetPasswordRequest value, $Res Function(_ResetPasswordRequest) _then) = __$ResetPasswordRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'email') String? email,@JsonKey(name: 'reset_password_code') String? resetPasswordCode,@JsonKey(name: 'new_password') String? newPassword
});




}
/// @nodoc
class __$ResetPasswordRequestCopyWithImpl<$Res>
    implements _$ResetPasswordRequestCopyWith<$Res> {
  __$ResetPasswordRequestCopyWithImpl(this._self, this._then);

  final _ResetPasswordRequest _self;
  final $Res Function(_ResetPasswordRequest) _then;

/// Create a copy of ResetPasswordRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = freezed,Object? resetPasswordCode = freezed,Object? newPassword = freezed,}) {
  return _then(_ResetPasswordRequest(
email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,resetPasswordCode: freezed == resetPasswordCode ? _self.resetPasswordCode : resetPasswordCode // ignore: cast_nullable_to_non_nullable
as String?,newPassword: freezed == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
