// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get mediaUrl => throw _privateConstructorUsedError;
  FileType? get fileType => throw _privateConstructorUsedError;
  bool? get theExternal => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) = _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? path,
      String? name,
      String? mediaUrl,
      FileType? fileType,
      bool? theExternal,
      DateTime? createdAt});

  $FileTypeCopyWith<$Res>? get fileType;
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media> implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? name = freezed,
    Object? mediaUrl = freezed,
    Object? fileType = freezed,
    Object? theExternal = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType?,
      theExternal: freezed == theExternal
          ? _value.theExternal
          : theExternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FileTypeCopyWith<$Res>? get fileType {
    if (_value.fileType == null) {
      return null;
    }

    return $FileTypeCopyWith<$Res>(_value.fileType!, (value) {
      return _then(_value.copyWith(fileType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(_$MediaImpl value, $Res Function(_$MediaImpl) then) = __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? path,
      String? name,
      String? mediaUrl,
      FileType? fileType,
      bool? theExternal,
      DateTime? createdAt});

  @override
  $FileTypeCopyWith<$Res>? get fileType;
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res, _$MediaImpl> implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(_$MediaImpl _value, $Res Function(_$MediaImpl) _then) : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? path = freezed,
    Object? name = freezed,
    Object? mediaUrl = freezed,
    Object? fileType = freezed,
    Object? theExternal = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$MediaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType?,
      theExternal: freezed == theExternal
          ? _value.theExternal
          : theExternal // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImpl implements _Media {
  const _$MediaImpl({@JsonKey(name: '_id') this.id, this.path, this.name, this.mediaUrl, this.fileType, this.theExternal, this.createdAt});

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) => _$$MediaImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? path;
  @override
  final String? name;
  @override
  final String? mediaUrl;
  @override
  final FileType? fileType;
  @override
  final bool? theExternal;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Media(id: $id, path: $path, name: $name, mediaUrl: $mediaUrl, fileType: $fileType, theExternal: $theExternal, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mediaUrl, mediaUrl) || other.mediaUrl == mediaUrl) &&
            (identical(other.fileType, fileType) || other.fileType == fileType) &&
            (identical(other.theExternal, theExternal) || other.theExternal == theExternal) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, name, mediaUrl, fileType, theExternal, createdAt);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith => __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {@JsonKey(name: '_id') final String? id,
      final String? path,
      final String? name,
      final String? mediaUrl,
      final FileType? fileType,
      final bool? theExternal,
      final DateTime? createdAt}) = _$MediaImpl;

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get path;
  @override
  String? get name;
  @override
  String? get mediaUrl;
  @override
  FileType? get fileType;
  @override
  bool? get theExternal;
  @override
  DateTime? get createdAt;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith => throw _privateConstructorUsedError;
}
