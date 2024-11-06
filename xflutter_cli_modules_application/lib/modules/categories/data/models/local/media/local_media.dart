// Generated By XFlutter Cli.
//
// more info: https://xflutter-cli.com
import 'package:objectbox/objectbox.dart';
import 'package:xflutter_cli_modules_application/modules/categories/data/models/entities/media/media.dart';

@Entity()
class LocalMedia {
  @Id()
  int id = 0;
  @Unique(onConflict: ConflictStrategy.replace)
  int? mediaId;
  String? modelType;
  int? modelId;
  String? collectionName;
  String? name;
  String? fileName;
  String? mimeType;
  String? disk;
  String? conversionsDisk;
  int? size;
  @Property(type: PropertyType.date)
  DateTime? createdAt;
  @Property(type: PropertyType.date)
  DateTime? updatedAt;
  String? originalUrl;
  String? previewUrl;

  LocalMedia({
    this.id = 0,
    this.mediaId,
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

  /// convert [Media] to [LocalMedia]
  factory LocalMedia.fromEntity(Media media) {
    final item = LocalMedia(
      mediaId: media.id,
      modelType: media.modelType,
      modelId: media.modelId,
      collectionName: media.collectionName,
      name: media.name,
      fileName: media.fileName,
      mimeType: media.mimeType,
      disk: media.disk,
      conversionsDisk: media.conversionsDisk,
      size: media.size,
      createdAt: media.createdAt,
      updatedAt: media.updatedAt,
      originalUrl: media.originalUrl,
      previewUrl: media.previewUrl,
    );

    return item;
  }

  /// convert [LocalMedia] to [Media]
  Media fromLocal() => Media(
        id: mediaId,
        modelType: modelType,
        modelId: modelId,
        collectionName: collectionName,
        name: name,
        fileName: fileName,
        mimeType: mimeType,
        disk: disk,
        conversionsDisk: conversionsDisk,
        size: size,
        createdAt: createdAt,
        updatedAt: updatedAt,
        originalUrl: originalUrl,
        previewUrl: previewUrl,
      );
}
