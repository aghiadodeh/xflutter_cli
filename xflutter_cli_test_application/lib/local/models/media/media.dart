/// Generated By XFlutter Cli.
///
/// more info: https://xflutter-cli.aghiadodeh.com
import 'package:isar/isar.dart';
import 'package:xflutter_cli_test_application/models/models.dart';

part 'media.g.dart';

@embedded
class IsarMedia {
  
   int? id;
 String? modelType;
 double? modelId;
 String? collectionName;
 String? name;
 String? fileName;
 String? mimeType;
 String? disk;
 String? conversionsDisk;
 double? size;
 DateTime? createdAt;
 DateTime? updatedAt;
 String? originalUrl;
 String? previewUrl;

  
  IsarMedia({
    this.id,
this.modelType,
this.modelId,
this.collectionName,
this.name,
this.fileName,
this.mimeType,
this.disk,
this.conversionsDisk,
this.size,
this.createdAt,
this.updatedAt,
this.originalUrl,
this.previewUrl,
  });
}

extension IsarMediaConverter on IsarMedia {
  /// convert [IsarMedia] to [Media]
  Media fromIsar() {
    return Media(
      id:id,
modelType:modelType,
modelId:modelId,
collectionName:collectionName,
name:name,
fileName:fileName,
mimeType:mimeType,
disk:disk,
conversionsDisk:conversionsDisk,
size:size,
createdAt:createdAt,
updatedAt:updatedAt,
originalUrl:originalUrl,
previewUrl:previewUrl,

    );
  }
}

extension MediaConverter on Media {
  /// convert [Media] to [IsarMedia]
  IsarMedia toIsar() {
    return IsarMedia(
      id:id,
modelType:modelType,
modelId:modelId?.toDouble(),
collectionName:collectionName,
name:name,
fileName:fileName,
mimeType:mimeType,
disk:disk,
conversionsDisk:conversionsDisk,
size:size?.toDouble(),
createdAt:createdAt,
updatedAt:updatedAt,
originalUrl:originalUrl,
previewUrl:previewUrl,

    );
  }
}
