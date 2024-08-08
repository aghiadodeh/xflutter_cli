// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reviews.freezed.dart';
part 'reviews.g.dart';

// ----------(json)----------
/*
{
  "rating": 2,
  "comment": "Very unhappy with my purchase!",
  "date": "2024-05-23T08:56:21.618Z",
  "reviewerName": "John Doe",
  "reviewerEmail": "john.doe@x.dummyjson.com"
} 
*/
// --------------------------
@freezed
class Reviews with _$Reviews {
  const factory Reviews({
    int? rating,
    String? comment,
    DateTime? date,
    String? reviewerName,
    String? reviewerEmail,
  }) = _Reviews;

  factory Reviews.fromJson(Map<String, dynamic> json) => _$ReviewsFromJson(json);
}