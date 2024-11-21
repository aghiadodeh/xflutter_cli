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
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_type')
  String? get modelType => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_id')
  int? get modelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'collection_name')
  String? get collectionName => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_name')
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: 'mime_type')
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: 'disk')
  String? get disk => throw _privateConstructorUsedError;
  @JsonKey(name: 'conversions_disk')
  String? get conversionsDisk => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_url')
  String? get originalUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String? get previewUrl => throw _privateConstructorUsedError;

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res, Media>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'model_type') String? modelType,
      @JsonKey(name: 'model_id') int? modelId,
      @JsonKey(name: 'collection_name') String? collectionName,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'disk') String? disk,
      @JsonKey(name: 'conversions_disk') String? conversionsDisk,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'original_url') String? originalUrl,
      @JsonKey(name: 'preview_url') String? previewUrl});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res, $Val extends Media>
    implements $MediaCopyWith<$Res> {
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
    Object? modelType = freezed,
    Object? modelId = freezed,
    Object? collectionName = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? disk = freezed,
    Object? conversionsDisk = freezed,
    Object? size = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? originalUrl = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      modelType: freezed == modelType
          ? _value.modelType
          : modelType // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      disk: freezed == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionsDisk: freezed == conversionsDisk
          ? _value.conversionsDisk
          : conversionsDisk // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaImplCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$MediaImplCopyWith(
          _$MediaImpl value, $Res Function(_$MediaImpl) then) =
      __$$MediaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'model_type') String? modelType,
      @JsonKey(name: 'model_id') int? modelId,
      @JsonKey(name: 'collection_name') String? collectionName,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'file_name') String? fileName,
      @JsonKey(name: 'mime_type') String? mimeType,
      @JsonKey(name: 'disk') String? disk,
      @JsonKey(name: 'conversions_disk') String? conversionsDisk,
      @JsonKey(name: 'size') int? size,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'original_url') String? originalUrl,
      @JsonKey(name: 'preview_url') String? previewUrl});
}

/// @nodoc
class __$$MediaImplCopyWithImpl<$Res>
    extends _$MediaCopyWithImpl<$Res, _$MediaImpl>
    implements _$$MediaImplCopyWith<$Res> {
  __$$MediaImplCopyWithImpl(
      _$MediaImpl _value, $Res Function(_$MediaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? modelType = freezed,
    Object? modelId = freezed,
    Object? collectionName = freezed,
    Object? name = freezed,
    Object? fileName = freezed,
    Object? mimeType = freezed,
    Object? disk = freezed,
    Object? conversionsDisk = freezed,
    Object? size = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? originalUrl = freezed,
    Object? previewUrl = freezed,
  }) {
    return _then(_$MediaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      modelType: freezed == modelType
          ? _value.modelType
          : modelType // ignore: cast_nullable_to_non_nullable
              as String?,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as int?,
      collectionName: freezed == collectionName
          ? _value.collectionName
          : collectionName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      disk: freezed == disk
          ? _value.disk
          : disk // ignore: cast_nullable_to_non_nullable
              as String?,
      conversionsDisk: freezed == conversionsDisk
          ? _value.conversionsDisk
          : conversionsDisk // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      originalUrl: freezed == originalUrl
          ? _value.originalUrl
          : originalUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      previewUrl: freezed == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaImpl implements _Media {
  const _$MediaImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'model_type') this.modelType,
      @JsonKey(name: 'model_id') this.modelId,
      @JsonKey(name: 'collection_name') this.collectionName,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'file_name') this.fileName,
      @JsonKey(name: 'mime_type') this.mimeType,
      @JsonKey(name: 'disk') this.disk,
      @JsonKey(name: 'conversions_disk') this.conversionsDisk,
      @JsonKey(name: 'size') this.size,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'original_url') this.originalUrl,
      @JsonKey(name: 'preview_url') this.previewUrl});

  factory _$MediaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'model_type')
  final String? modelType;
  @override
  @JsonKey(name: 'model_id')
  final int? modelId;
  @override
  @JsonKey(name: 'collection_name')
  final String? collectionName;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'file_name')
  final String? fileName;
  @override
  @JsonKey(name: 'mime_type')
  final String? mimeType;
  @override
  @JsonKey(name: 'disk')
  final String? disk;
  @override
  @JsonKey(name: 'conversions_disk')
  final String? conversionsDisk;
  @override
  @JsonKey(name: 'size')
  final int? size;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'original_url')
  final String? originalUrl;
  @override
  @JsonKey(name: 'preview_url')
  final String? previewUrl;

  @override
  String toString() {
    return 'Media(id: $id, modelType: $modelType, modelId: $modelId, collectionName: $collectionName, name: $name, fileName: $fileName, mimeType: $mimeType, disk: $disk, conversionsDisk: $conversionsDisk, size: $size, createdAt: $createdAt, updatedAt: $updatedAt, originalUrl: $originalUrl, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.modelType, modelType) ||
                other.modelType == modelType) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.collectionName, collectionName) ||
                other.collectionName == collectionName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.disk, disk) || other.disk == disk) &&
            (identical(other.conversionsDisk, conversionsDisk) ||
                other.conversionsDisk == conversionsDisk) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.originalUrl, originalUrl) ||
                other.originalUrl == originalUrl) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      modelType,
      modelId,
      collectionName,
      name,
      fileName,
      mimeType,
      disk,
      conversionsDisk,
      size,
      createdAt,
      updatedAt,
      originalUrl,
      previewUrl);

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      __$$MediaImplCopyWithImpl<_$MediaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaImplToJson(
      this,
    );
  }
}

abstract class _Media implements Media {
  const factory _Media(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'model_type') final String? modelType,
      @JsonKey(name: 'model_id') final int? modelId,
      @JsonKey(name: 'collection_name') final String? collectionName,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'file_name') final String? fileName,
      @JsonKey(name: 'mime_type') final String? mimeType,
      @JsonKey(name: 'disk') final String? disk,
      @JsonKey(name: 'conversions_disk') final String? conversionsDisk,
      @JsonKey(name: 'size') final int? size,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'original_url') final String? originalUrl,
      @JsonKey(name: 'preview_url') final String? previewUrl}) = _$MediaImpl;

  factory _Media.fromJson(Map<String, dynamic> json) = _$MediaImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'model_type')
  String? get modelType;
  @override
  @JsonKey(name: 'model_id')
  int? get modelId;
  @override
  @JsonKey(name: 'collection_name')
  String? get collectionName;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'file_name')
  String? get fileName;
  @override
  @JsonKey(name: 'mime_type')
  String? get mimeType;
  @override
  @JsonKey(name: 'disk')
  String? get disk;
  @override
  @JsonKey(name: 'conversions_disk')
  String? get conversionsDisk;
  @override
  @JsonKey(name: 'size')
  int? get size;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'original_url')
  String? get originalUrl;
  @override
  @JsonKey(name: 'preview_url')
  String? get previewUrl;

  /// Create a copy of Media
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MediaImplCopyWith<_$MediaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
