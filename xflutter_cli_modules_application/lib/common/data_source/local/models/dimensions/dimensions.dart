// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:isar/isar.dart';
import 'package:xflutter_cli_modules_application/common/models/models.dart';

part 'dimensions.g.dart';

@embedded
class IsarDimensions {
  double? width;
  double? height;
  double? depth;

  IsarDimensions({
    this.width,
    this.height,
    this.depth,
  });
}

extension IsarDimensionsConverter on IsarDimensions {
  /// convert [IsarDimensions] to [Dimensions]
  Dimensions fromIsar() {
    return Dimensions(
      width: width,
      height: height,
      depth: depth,
    );
  }
}

extension DimensionsConverter on Dimensions {
  /// convert [Dimensions] to [IsarDimensions]
  IsarDimensions toIsar() {
    return IsarDimensions(
      width: width?.toDouble(),
      height: height?.toDouble(),
      depth: depth?.toDouble(),
    );
  }
}
