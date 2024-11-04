// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
mixin _$Review {
  @JsonKey(name: "rating")
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewerName")
  String? get reviewerName => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewerEmail")
  String? get reviewerEmail => throw _privateConstructorUsedError;

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) = _$ReviewCopyWithImpl<$Res, Review>;
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "reviewerName") String? reviewerName,
      @JsonKey(name: "reviewerEmail") String? reviewerEmail});
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res, $Val extends Review> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewImplCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$$ReviewImplCopyWith(_$ReviewImpl value, $Res Function(_$ReviewImpl) then) = __$$ReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rating") int? rating,
      @JsonKey(name: "comment") String? comment,
      @JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "reviewerName") String? reviewerName,
      @JsonKey(name: "reviewerEmail") String? reviewerEmail});
}

/// @nodoc
class __$$ReviewImplCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res, _$ReviewImpl> implements _$$ReviewImplCopyWith<$Res> {
  __$$ReviewImplCopyWithImpl(_$ReviewImpl _value, $Res Function(_$ReviewImpl) _then) : super(_value, _then);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_$ReviewImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewImpl implements _Review {
  const _$ReviewImpl(
      {@JsonKey(name: "rating") this.rating,
      @JsonKey(name: "comment") this.comment,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "reviewerName") this.reviewerName,
      @JsonKey(name: "reviewerEmail") this.reviewerEmail});

  factory _$ReviewImpl.fromJson(Map<String, dynamic> json) => _$$ReviewImplFromJson(json);

  @override
  @JsonKey(name: "rating")
  final int? rating;
  @override
  @JsonKey(name: "comment")
  final String? comment;
  @override
  @JsonKey(name: "date")
  final DateTime? date;
  @override
  @JsonKey(name: "reviewerName")
  final String? reviewerName;
  @override
  @JsonKey(name: "reviewerEmail")
  final String? reviewerEmail;

  @override
  String toString() {
    return 'Review(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reviewerName, reviewerName) || other.reviewerName == reviewerName) &&
            (identical(other.reviewerEmail, reviewerEmail) || other.reviewerEmail == reviewerEmail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rating, comment, date, reviewerName, reviewerEmail);

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith => __$$ReviewImplCopyWithImpl<_$ReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewImplToJson(
      this,
    );
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {@JsonKey(name: "rating") final int? rating,
      @JsonKey(name: "comment") final String? comment,
      @JsonKey(name: "date") final DateTime? date,
      @JsonKey(name: "reviewerName") final String? reviewerName,
      @JsonKey(name: "reviewerEmail") final String? reviewerEmail}) = _$ReviewImpl;

  factory _Review.fromJson(Map<String, dynamic> json) = _$ReviewImpl.fromJson;

  @override
  @JsonKey(name: "rating")
  int? get rating;
  @override
  @JsonKey(name: "comment")
  String? get comment;
  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(name: "reviewerName")
  String? get reviewerName;
  @override
  @JsonKey(name: "reviewerEmail")
  String? get reviewerEmail;

  /// Create a copy of Review
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewImplCopyWith<_$ReviewImpl> get copyWith => throw _privateConstructorUsedError;
}
