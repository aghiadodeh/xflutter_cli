// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileType _$FileTypeFromJson(Map<String, dynamic> json) {
  return _FileType.fromJson(json);
}

/// @nodoc
mixin _$FileType {
  String? get ext => throw _privateConstructorUsedError;
  String? get mime => throw _privateConstructorUsedError;

  /// Serializes this FileType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileTypeCopyWith<FileType> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileTypeCopyWith<$Res> {
  factory $FileTypeCopyWith(FileType value, $Res Function(FileType) then) = _$FileTypeCopyWithImpl<$Res, FileType>;
  @useResult
  $Res call({String? ext, String? mime});
}

/// @nodoc
class _$FileTypeCopyWithImpl<$Res, $Val extends FileType> implements $FileTypeCopyWith<$Res> {
  _$FileTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ext = freezed,
    Object? mime = freezed,
  }) {
    return _then(_value.copyWith(
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileTypeImplCopyWith<$Res> implements $FileTypeCopyWith<$Res> {
  factory _$$FileTypeImplCopyWith(_$FileTypeImpl value, $Res Function(_$FileTypeImpl) then) = __$$FileTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? ext, String? mime});
}

/// @nodoc
class __$$FileTypeImplCopyWithImpl<$Res> extends _$FileTypeCopyWithImpl<$Res, _$FileTypeImpl> implements _$$FileTypeImplCopyWith<$Res> {
  __$$FileTypeImplCopyWithImpl(_$FileTypeImpl _value, $Res Function(_$FileTypeImpl) _then) : super(_value, _then);

  /// Create a copy of FileType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ext = freezed,
    Object? mime = freezed,
  }) {
    return _then(_$FileTypeImpl(
      ext: freezed == ext
          ? _value.ext
          : ext // ignore: cast_nullable_to_non_nullable
              as String?,
      mime: freezed == mime
          ? _value.mime
          : mime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileTypeImpl implements _FileType {
  const _$FileTypeImpl({this.ext, this.mime});

  factory _$FileTypeImpl.fromJson(Map<String, dynamic> json) => _$$FileTypeImplFromJson(json);

  @override
  final String? ext;
  @override
  final String? mime;

  @override
  String toString() {
    return 'FileType(ext: $ext, mime: $mime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileTypeImpl &&
            (identical(other.ext, ext) || other.ext == ext) &&
            (identical(other.mime, mime) || other.mime == mime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, ext, mime);

  /// Create a copy of FileType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileTypeImplCopyWith<_$FileTypeImpl> get copyWith => __$$FileTypeImplCopyWithImpl<_$FileTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileTypeImplToJson(
      this,
    );
  }
}

abstract class _FileType implements FileType {
  const factory _FileType({final String? ext, final String? mime}) = _$FileTypeImpl;

  factory _FileType.fromJson(Map<String, dynamic> json) = _$FileTypeImpl.fromJson;

  @override
  String? get ext;
  @override
  String? get mime;

  /// Create a copy of FileType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileTypeImplCopyWith<_$FileTypeImpl> get copyWith => throw _privateConstructorUsedError;
}
