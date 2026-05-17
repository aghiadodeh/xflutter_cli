// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UiMessage {

 String? get message; String? get action; UiMessageState get state;
/// Create a copy of UiMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UiMessageCopyWith<UiMessage> get copyWith => _$UiMessageCopyWithImpl<UiMessage>(this as UiMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiMessage&&(identical(other.message, message) || other.message == message)&&(identical(other.action, action) || other.action == action)&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,message,action,state);

@override
String toString() {
  return 'UiMessage(message: $message, action: $action, state: $state)';
}


}

/// @nodoc
abstract mixin class $UiMessageCopyWith<$Res>  {
  factory $UiMessageCopyWith(UiMessage value, $Res Function(UiMessage) _then) = _$UiMessageCopyWithImpl;
@useResult
$Res call({
 String? message, String? action, UiMessageState state
});




}
/// @nodoc
class _$UiMessageCopyWithImpl<$Res>
    implements $UiMessageCopyWith<$Res> {
  _$UiMessageCopyWithImpl(this._self, this._then);

  final UiMessage _self;
  final $Res Function(UiMessage) _then;

/// Create a copy of UiMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = freezed,Object? action = freezed,Object? state = null,}) {
  return _then(_self.copyWith(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as UiMessageState,
  ));
}

}


/// Adds pattern-matching-related methods to [UiMessage].
extension UiMessagePatterns on UiMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UiMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UiMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UiMessage value)  $default,){
final _that = this;
switch (_that) {
case _UiMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UiMessage value)?  $default,){
final _that = this;
switch (_that) {
case _UiMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? message,  String? action,  UiMessageState state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UiMessage() when $default != null:
return $default(_that.message,_that.action,_that.state);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? message,  String? action,  UiMessageState state)  $default,) {final _that = this;
switch (_that) {
case _UiMessage():
return $default(_that.message,_that.action,_that.state);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? message,  String? action,  UiMessageState state)?  $default,) {final _that = this;
switch (_that) {
case _UiMessage() when $default != null:
return $default(_that.message,_that.action,_that.state);case _:
  return null;

}
}

}

/// @nodoc


class _UiMessage extends UiMessage {
  const _UiMessage({this.message, this.action, this.state = UiMessageState.initial}): super._();
  

@override final  String? message;
@override final  String? action;
@override@JsonKey() final  UiMessageState state;

/// Create a copy of UiMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UiMessageCopyWith<_UiMessage> get copyWith => __$UiMessageCopyWithImpl<_UiMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UiMessage&&(identical(other.message, message) || other.message == message)&&(identical(other.action, action) || other.action == action)&&(identical(other.state, state) || other.state == state));
}


@override
int get hashCode => Object.hash(runtimeType,message,action,state);

@override
String toString() {
  return 'UiMessage(message: $message, action: $action, state: $state)';
}


}

/// @nodoc
abstract mixin class _$UiMessageCopyWith<$Res> implements $UiMessageCopyWith<$Res> {
  factory _$UiMessageCopyWith(_UiMessage value, $Res Function(_UiMessage) _then) = __$UiMessageCopyWithImpl;
@override @useResult
$Res call({
 String? message, String? action, UiMessageState state
});




}
/// @nodoc
class __$UiMessageCopyWithImpl<$Res>
    implements _$UiMessageCopyWith<$Res> {
  __$UiMessageCopyWithImpl(this._self, this._then);

  final _UiMessage _self;
  final $Res Function(_UiMessage) _then;

/// Create a copy of UiMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = freezed,Object? action = freezed,Object? state = null,}) {
  return _then(_UiMessage(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as UiMessageState,
  ));
}


}

// dart format on
