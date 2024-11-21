// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_verification_code_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetVerificationCodeRequest _$GetVerificationCodeRequestFromJson(
    Map<String, dynamic> json) {
  return _GetVerificationCodeRequest.fromJson(json);
}

/// @nodoc
mixin _$GetVerificationCodeRequest {
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;

  /// Serializes this GetVerificationCodeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetVerificationCodeRequestCopyWith<GetVerificationCodeRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetVerificationCodeRequestCopyWith<$Res> {
  factory $GetVerificationCodeRequestCopyWith(GetVerificationCodeRequest value,
          $Res Function(GetVerificationCodeRequest) then) =
      _$GetVerificationCodeRequestCopyWithImpl<$Res,
          GetVerificationCodeRequest>;
  @useResult
  $Res call({@JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class _$GetVerificationCodeRequestCopyWithImpl<$Res,
        $Val extends GetVerificationCodeRequest>
    implements $GetVerificationCodeRequestCopyWith<$Res> {
  _$GetVerificationCodeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetVerificationCodeRequestImplCopyWith<$Res>
    implements $GetVerificationCodeRequestCopyWith<$Res> {
  factory _$$GetVerificationCodeRequestImplCopyWith(
          _$GetVerificationCodeRequestImpl value,
          $Res Function(_$GetVerificationCodeRequestImpl) then) =
      __$$GetVerificationCodeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'phone') String? phone});
}

/// @nodoc
class __$$GetVerificationCodeRequestImplCopyWithImpl<$Res>
    extends _$GetVerificationCodeRequestCopyWithImpl<$Res,
        _$GetVerificationCodeRequestImpl>
    implements _$$GetVerificationCodeRequestImplCopyWith<$Res> {
  __$$GetVerificationCodeRequestImplCopyWithImpl(
      _$GetVerificationCodeRequestImpl _value,
      $Res Function(_$GetVerificationCodeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_$GetVerificationCodeRequestImpl(
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetVerificationCodeRequestImpl implements _GetVerificationCodeRequest {
  const _$GetVerificationCodeRequestImpl({@JsonKey(name: 'phone') this.phone});

  factory _$GetVerificationCodeRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetVerificationCodeRequestImplFromJson(json);

  @override
  @JsonKey(name: 'phone')
  final String? phone;

  @override
  String toString() {
    return 'GetVerificationCodeRequest(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVerificationCodeRequestImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phone);

  /// Create a copy of GetVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVerificationCodeRequestImplCopyWith<_$GetVerificationCodeRequestImpl>
      get copyWith => __$$GetVerificationCodeRequestImplCopyWithImpl<
          _$GetVerificationCodeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetVerificationCodeRequestImplToJson(
      this,
    );
  }
}

abstract class _GetVerificationCodeRequest
    implements GetVerificationCodeRequest {
  const factory _GetVerificationCodeRequest(
          {@JsonKey(name: 'phone') final String? phone}) =
      _$GetVerificationCodeRequestImpl;

  factory _GetVerificationCodeRequest.fromJson(Map<String, dynamic> json) =
      _$GetVerificationCodeRequestImpl.fromJson;

  @override
  @JsonKey(name: 'phone')
  String? get phone;

  /// Create a copy of GetVerificationCodeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetVerificationCodeRequestImplCopyWith<_$GetVerificationCodeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
