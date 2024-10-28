// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UiMessage {
  String? get message => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  UiMessageState get state => throw _privateConstructorUsedError;

  /// Create a copy of UiMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UiMessageCopyWith<UiMessage> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiMessageCopyWith<$Res> {
  factory $UiMessageCopyWith(UiMessage value, $Res Function(UiMessage) then) = _$UiMessageCopyWithImpl<$Res, UiMessage>;
  @useResult
  $Res call({String? message, String? action, UiMessageState state});
}

/// @nodoc
class _$UiMessageCopyWithImpl<$Res, $Val extends UiMessage> implements $UiMessageCopyWith<$Res> {
  _$UiMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UiMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? action = freezed,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UiMessageState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UiMessageImplCopyWith<$Res> implements $UiMessageCopyWith<$Res> {
  factory _$$UiMessageImplCopyWith(_$UiMessageImpl value, $Res Function(_$UiMessageImpl) then) = __$$UiMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? action, UiMessageState state});
}

/// @nodoc
class __$$UiMessageImplCopyWithImpl<$Res> extends _$UiMessageCopyWithImpl<$Res, _$UiMessageImpl> implements _$$UiMessageImplCopyWith<$Res> {
  __$$UiMessageImplCopyWithImpl(_$UiMessageImpl _value, $Res Function(_$UiMessageImpl) _then) : super(_value, _then);

  /// Create a copy of UiMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? action = freezed,
    Object? state = null,
  }) {
    return _then(_$UiMessageImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as UiMessageState,
    ));
  }
}

/// @nodoc

class _$UiMessageImpl extends _UiMessage {
  const _$UiMessageImpl({this.message, this.action, this.state = UiMessageState.initial}) : super._();

  @override
  final String? message;
  @override
  final String? action;
  @override
  @JsonKey()
  final UiMessageState state;

  @override
  String toString() {
    return 'UiMessage(message: $message, action: $action, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiMessageImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, action, state);

  /// Create a copy of UiMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiMessageImplCopyWith<_$UiMessageImpl> get copyWith => __$$UiMessageImplCopyWithImpl<_$UiMessageImpl>(this, _$identity);
}

abstract class _UiMessage extends UiMessage {
  const factory _UiMessage({final String? message, final String? action, final UiMessageState state}) = _$UiMessageImpl;
  const _UiMessage._() : super._();

  @override
  String? get message;
  @override
  String? get action;
  @override
  UiMessageState get state;

  /// Create a copy of UiMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiMessageImplCopyWith<_$UiMessageImpl> get copyWith => throw _privateConstructorUsedError;
}
