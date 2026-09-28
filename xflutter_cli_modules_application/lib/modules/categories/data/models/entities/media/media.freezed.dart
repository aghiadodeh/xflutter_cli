// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Media {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'model_type') String? get modelType;@JsonKey(name: 'model_id') int? get modelId;@JsonKey(name: 'collection_name') String? get collectionName;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'file_name') String? get fileName;@JsonKey(name: 'mime_type') String? get mimeType;@JsonKey(name: 'disk') String? get disk;@JsonKey(name: 'conversions_disk') String? get conversionsDisk;@JsonKey(name: 'size') int? get size;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'updated_at') DateTime? get updatedAt;@JsonKey(name: 'original_url') String? get originalUrl;@JsonKey(name: 'preview_url') String? get previewUrl;
/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaCopyWith<Media> get copyWith => _$MediaCopyWithImpl<Media>(this as Media, _$identity);

  /// Serializes this Media to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Media&&(identical(other.id, id) || other.id == id)&&(identical(other.modelType, modelType) || other.modelType == modelType)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.name, name) || other.name == name)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.disk, disk) || other.disk == disk)&&(identical(other.conversionsDisk, conversionsDisk) || other.conversionsDisk == conversionsDisk)&&(identical(other.size, size) || other.size == size)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,modelType,modelId,collectionName,name,fileName,mimeType,disk,conversionsDisk,size,createdAt,updatedAt,originalUrl,previewUrl);

@override
String toString() {
  return 'Media(id: $id, modelType: $modelType, modelId: $modelId, collectionName: $collectionName, name: $name, fileName: $fileName, mimeType: $mimeType, disk: $disk, conversionsDisk: $conversionsDisk, size: $size, createdAt: $createdAt, updatedAt: $updatedAt, originalUrl: $originalUrl, previewUrl: $previewUrl)';
}


}

/// @nodoc
abstract mixin class $MediaCopyWith<$Res>  {
  factory $MediaCopyWith(Media value, $Res Function(Media) _then) = _$MediaCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'model_type') String? modelType,@JsonKey(name: 'model_id') int? modelId,@JsonKey(name: 'collection_name') String? collectionName,@JsonKey(name: 'name') String? name,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'mime_type') String? mimeType,@JsonKey(name: 'disk') String? disk,@JsonKey(name: 'conversions_disk') String? conversionsDisk,@JsonKey(name: 'size') int? size,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'original_url') String? originalUrl,@JsonKey(name: 'preview_url') String? previewUrl
});




}
/// @nodoc
class _$MediaCopyWithImpl<$Res>
    implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._self, this._then);

  final Media _self;
  final $Res Function(Media) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? modelType = freezed,Object? modelId = freezed,Object? collectionName = freezed,Object? name = freezed,Object? fileName = freezed,Object? mimeType = freezed,Object? disk = freezed,Object? conversionsDisk = freezed,Object? size = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? originalUrl = freezed,Object? previewUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,modelType: freezed == modelType ? _self.modelType : modelType // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as int?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,disk: freezed == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String?,conversionsDisk: freezed == conversionsDisk ? _self.conversionsDisk : conversionsDisk // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,originalUrl: freezed == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String?,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Media].
extension MediaPatterns on Media {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Media value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Media() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Media value)  $default,){
final _that = this;
switch (_that) {
case _Media():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Media value)?  $default,){
final _that = this;
switch (_that) {
case _Media() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'model_type')  String? modelType, @JsonKey(name: 'model_id')  int? modelId, @JsonKey(name: 'collection_name')  String? collectionName, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'disk')  String? disk, @JsonKey(name: 'conversions_disk')  String? conversionsDisk, @JsonKey(name: 'size')  int? size, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'original_url')  String? originalUrl, @JsonKey(name: 'preview_url')  String? previewUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Media() when $default != null:
return $default(_that.id,_that.modelType,_that.modelId,_that.collectionName,_that.name,_that.fileName,_that.mimeType,_that.disk,_that.conversionsDisk,_that.size,_that.createdAt,_that.updatedAt,_that.originalUrl,_that.previewUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'model_type')  String? modelType, @JsonKey(name: 'model_id')  int? modelId, @JsonKey(name: 'collection_name')  String? collectionName, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'disk')  String? disk, @JsonKey(name: 'conversions_disk')  String? conversionsDisk, @JsonKey(name: 'size')  int? size, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'original_url')  String? originalUrl, @JsonKey(name: 'preview_url')  String? previewUrl)  $default,) {final _that = this;
switch (_that) {
case _Media():
return $default(_that.id,_that.modelType,_that.modelId,_that.collectionName,_that.name,_that.fileName,_that.mimeType,_that.disk,_that.conversionsDisk,_that.size,_that.createdAt,_that.updatedAt,_that.originalUrl,_that.previewUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'model_type')  String? modelType, @JsonKey(name: 'model_id')  int? modelId, @JsonKey(name: 'collection_name')  String? collectionName, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'file_name')  String? fileName, @JsonKey(name: 'mime_type')  String? mimeType, @JsonKey(name: 'disk')  String? disk, @JsonKey(name: 'conversions_disk')  String? conversionsDisk, @JsonKey(name: 'size')  int? size, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'updated_at')  DateTime? updatedAt, @JsonKey(name: 'original_url')  String? originalUrl, @JsonKey(name: 'preview_url')  String? previewUrl)?  $default,) {final _that = this;
switch (_that) {
case _Media() when $default != null:
return $default(_that.id,_that.modelType,_that.modelId,_that.collectionName,_that.name,_that.fileName,_that.mimeType,_that.disk,_that.conversionsDisk,_that.size,_that.createdAt,_that.updatedAt,_that.originalUrl,_that.previewUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Media implements Media {
  const _Media({@JsonKey(name: 'id') this.id, @JsonKey(name: 'model_type') this.modelType, @JsonKey(name: 'model_id') this.modelId, @JsonKey(name: 'collection_name') this.collectionName, @JsonKey(name: 'name') this.name, @JsonKey(name: 'file_name') this.fileName, @JsonKey(name: 'mime_type') this.mimeType, @JsonKey(name: 'disk') this.disk, @JsonKey(name: 'conversions_disk') this.conversionsDisk, @JsonKey(name: 'size') this.size, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'original_url') this.originalUrl, @JsonKey(name: 'preview_url') this.previewUrl});
  factory _Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'model_type') final  String? modelType;
@override@JsonKey(name: 'model_id') final  int? modelId;
@override@JsonKey(name: 'collection_name') final  String? collectionName;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'file_name') final  String? fileName;
@override@JsonKey(name: 'mime_type') final  String? mimeType;
@override@JsonKey(name: 'disk') final  String? disk;
@override@JsonKey(name: 'conversions_disk') final  String? conversionsDisk;
@override@JsonKey(name: 'size') final  int? size;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;
@override@JsonKey(name: 'original_url') final  String? originalUrl;
@override@JsonKey(name: 'preview_url') final  String? previewUrl;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaCopyWith<_Media> get copyWith => __$MediaCopyWithImpl<_Media>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Media&&(identical(other.id, id) || other.id == id)&&(identical(other.modelType, modelType) || other.modelType == modelType)&&(identical(other.modelId, modelId) || other.modelId == modelId)&&(identical(other.collectionName, collectionName) || other.collectionName == collectionName)&&(identical(other.name, name) || other.name == name)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.disk, disk) || other.disk == disk)&&(identical(other.conversionsDisk, conversionsDisk) || other.conversionsDisk == conversionsDisk)&&(identical(other.size, size) || other.size == size)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.originalUrl, originalUrl) || other.originalUrl == originalUrl)&&(identical(other.previewUrl, previewUrl) || other.previewUrl == previewUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,modelType,modelId,collectionName,name,fileName,mimeType,disk,conversionsDisk,size,createdAt,updatedAt,originalUrl,previewUrl);

@override
String toString() {
  return 'Media(id: $id, modelType: $modelType, modelId: $modelId, collectionName: $collectionName, name: $name, fileName: $fileName, mimeType: $mimeType, disk: $disk, conversionsDisk: $conversionsDisk, size: $size, createdAt: $createdAt, updatedAt: $updatedAt, originalUrl: $originalUrl, previewUrl: $previewUrl)';
}


}

/// @nodoc
abstract mixin class _$MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$MediaCopyWith(_Media value, $Res Function(_Media) _then) = __$MediaCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'model_type') String? modelType,@JsonKey(name: 'model_id') int? modelId,@JsonKey(name: 'collection_name') String? collectionName,@JsonKey(name: 'name') String? name,@JsonKey(name: 'file_name') String? fileName,@JsonKey(name: 'mime_type') String? mimeType,@JsonKey(name: 'disk') String? disk,@JsonKey(name: 'conversions_disk') String? conversionsDisk,@JsonKey(name: 'size') int? size,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'updated_at') DateTime? updatedAt,@JsonKey(name: 'original_url') String? originalUrl,@JsonKey(name: 'preview_url') String? previewUrl
});




}
/// @nodoc
class __$MediaCopyWithImpl<$Res>
    implements _$MediaCopyWith<$Res> {
  __$MediaCopyWithImpl(this._self, this._then);

  final _Media _self;
  final $Res Function(_Media) _then;

/// Create a copy of Media
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? modelType = freezed,Object? modelId = freezed,Object? collectionName = freezed,Object? name = freezed,Object? fileName = freezed,Object? mimeType = freezed,Object? disk = freezed,Object? conversionsDisk = freezed,Object? size = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? originalUrl = freezed,Object? previewUrl = freezed,}) {
  return _then(_Media(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,modelType: freezed == modelType ? _self.modelType : modelType // ignore: cast_nullable_to_non_nullable
as String?,modelId: freezed == modelId ? _self.modelId : modelId // ignore: cast_nullable_to_non_nullable
as int?,collectionName: freezed == collectionName ? _self.collectionName : collectionName // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,mimeType: freezed == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String?,disk: freezed == disk ? _self.disk : disk // ignore: cast_nullable_to_non_nullable
as String?,conversionsDisk: freezed == conversionsDisk ? _self.conversionsDisk : conversionsDisk // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,originalUrl: freezed == originalUrl ? _self.originalUrl : originalUrl // ignore: cast_nullable_to_non_nullable
as String?,previewUrl: freezed == previewUrl ? _self.previewUrl : previewUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
