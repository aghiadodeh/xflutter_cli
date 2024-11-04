// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordRequest _$ChangePasswordRequestFromJson(Map<String, dynamic> json) {
  return _ChangePasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequest {
  @JsonKey(name: 'old_password')
  String? get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_password')
  String? get newPassword => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordRequestCopyWith<ChangePasswordRequest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestCopyWith<$Res> {
  factory $ChangePasswordRequestCopyWith(ChangePasswordRequest value, $Res Function(ChangePasswordRequest) then) =
      _$ChangePasswordRequestCopyWithImpl<$Res, ChangePasswordRequest>;
  @useResult
  $Res call({@JsonKey(name: 'old_password') String? oldPassword, @JsonKey(name: 'new_password') String? newPassword});
}

/// @nodoc
class _$ChangePasswordRequestCopyWithImpl<$Res, $Val extends ChangePasswordRequest> implements $ChangePasswordRequestCopyWith<$Res> {
  _$ChangePasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestImplCopyWith<$Res> implements $ChangePasswordRequestCopyWith<$Res> {
  factory _$$ChangePasswordRequestImplCopyWith(_$ChangePasswordRequestImpl value, $Res Function(_$ChangePasswordRequestImpl) then) =
      __$$ChangePasswordRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'old_password') String? oldPassword, @JsonKey(name: 'new_password') String? newPassword});
}

/// @nodoc
class __$$ChangePasswordRequestImplCopyWithImpl<$Res> extends _$ChangePasswordRequestCopyWithImpl<$Res, _$ChangePasswordRequestImpl>
    implements _$$ChangePasswordRequestImplCopyWith<$Res> {
  __$$ChangePasswordRequestImplCopyWithImpl(_$ChangePasswordRequestImpl _value, $Res Function(_$ChangePasswordRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$ChangePasswordRequestImpl(
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestImpl implements _ChangePasswordRequest {
  const _$ChangePasswordRequestImpl({@JsonKey(name: 'old_password') this.oldPassword, @JsonKey(name: 'new_password') this.newPassword});

  factory _$ChangePasswordRequestImpl.fromJson(Map<String, dynamic> json) => _$$ChangePasswordRequestImplFromJson(json);

  @override
  @JsonKey(name: 'old_password')
  final String? oldPassword;
  @override
  @JsonKey(name: 'new_password')
  final String? newPassword;

  @override
  String toString() {
    return 'ChangePasswordRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestImpl &&
            (identical(other.oldPassword, oldPassword) || other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) || other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl> get copyWith =>
      __$$ChangePasswordRequestImplCopyWithImpl<_$ChangePasswordRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequest implements ChangePasswordRequest {
  const factory _ChangePasswordRequest(
      {@JsonKey(name: 'old_password') final String? oldPassword,
      @JsonKey(name: 'new_password') final String? newPassword}) = _$ChangePasswordRequestImpl;

  factory _ChangePasswordRequest.fromJson(Map<String, dynamic> json) = _$ChangePasswordRequestImpl.fromJson;

  @override
  @JsonKey(name: 'old_password')
  String? get oldPassword;
  @override
  @JsonKey(name: 'new_password')
  String? get newPassword;

  /// Create a copy of ChangePasswordRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordRequestImplCopyWith<_$ChangePasswordRequestImpl> get copyWith => throw _privateConstructorUsedError;
}
