// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "createdAt")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: "qrCode")
  String? get qrCode => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) = _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "qrCode") String? qrCode});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(_$MetaImpl value, $Res Function(_$MetaImpl) then) = __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "createdAt") DateTime? createdAt,
      @JsonKey(name: "updatedAt") DateTime? updatedAt,
      @JsonKey(name: "barcode") String? barcode,
      @JsonKey(name: "qrCode") String? qrCode});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$MetaImpl> implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then) : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$MetaImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "createdAt") this.createdAt,
      @JsonKey(name: "updatedAt") this.updatedAt,
      @JsonKey(name: "barcode") this.barcode,
      @JsonKey(name: "qrCode") this.qrCode});

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) => _$$MetaImplFromJson(json);

  @override
  @JsonKey(name: "createdAt")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updatedAt")
  final DateTime? updatedAt;
  @override
  @JsonKey(name: "barcode")
  final String? barcode;
  @override
  @JsonKey(name: "qrCode")
  final String? qrCode;

  @override
  String toString() {
    return 'Meta(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, updatedAt, barcode, qrCode);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith => __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {@JsonKey(name: "createdAt") final DateTime? createdAt,
      @JsonKey(name: "updatedAt") final DateTime? updatedAt,
      @JsonKey(name: "barcode") final String? barcode,
      @JsonKey(name: "qrCode") final String? qrCode}) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "createdAt")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updatedAt")
  DateTime? get updatedAt;
  @override
  @JsonKey(name: "barcode")
  String? get barcode;
  @override
  @JsonKey(name: "qrCode")
  String? get qrCode;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith => throw _privateConstructorUsedError;
}
