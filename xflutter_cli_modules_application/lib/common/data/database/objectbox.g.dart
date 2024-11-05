// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again
// with `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types, depend_on_referenced_packages
// coverage:ignore-file

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart' as obx_int; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart' as obx;
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import '../../../modules/products/data/models/local/dimensions/local_dimensions.dart';
import '../../../modules/products/data/models/local/meta/local_meta.dart';
import '../../../modules/products/data/models/local/product/local_product.dart';
import '../../../modules/products/data/models/local/review/local_review.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <obx_int.ModelEntity>[
  obx_int.ModelEntity(
      id: const obx_int.IdUid(1, 2122160908577252228),
      name: 'LocalDimensions',
      lastPropertyId: const obx_int.IdUid(4, 5570296253084072915),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(id: const obx_int.IdUid(1, 7367378304943420629), name: 'id', type: 6, flags: 1),
        obx_int.ModelProperty(id: const obx_int.IdUid(2, 725525659083692558), name: 'width', type: 8, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(3, 4901943516027974532), name: 'height', type: 8, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(4, 5570296253084072915), name: 'depth', type: 8, flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(2, 6276929962951983797),
      name: 'LocalMeta',
      lastPropertyId: const obx_int.IdUid(5, 4148288451652044199),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(id: const obx_int.IdUid(1, 8258615690161606195), name: 'id', type: 6, flags: 1),
        obx_int.ModelProperty(id: const obx_int.IdUid(2, 2975092823442895155), name: 'createdAt', type: 10, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(3, 3161399512787844555), name: 'updatedAt', type: 10, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(4, 8778189847716892143), name: 'barcode', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(5, 4148288451652044199), name: 'qrCode', type: 9, flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(3, 8714101394009378796),
      name: 'LocalProduct',
      lastPropertyId: const obx_int.IdUid(22, 5295875058168480462),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(id: const obx_int.IdUid(1, 4950305005857020540), name: 'id', type: 6, flags: 1),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(2, 5785837506382813284),
            name: 'productId',
            type: 6,
            flags: 32808,
            indexId: const obx_int.IdUid(1, 2628685097833672000)),
        obx_int.ModelProperty(id: const obx_int.IdUid(3, 3864100186061919005), name: 'title', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(4, 8549972555162116882), name: 'description', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(5, 641962031009408866), name: 'category', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(6, 2498210399809801300), name: 'price', type: 8, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(7, 6290856439237576945), name: 'discountPercentage', type: 8, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(8, 1231556052923784109), name: 'rating', type: 8, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(9, 3707184211110616307), name: 'stock', type: 6, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(10, 2333198293225650761), name: 'tags', type: 30, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(11, 3827112290753941347), name: 'brand', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(12, 2957570007312386489), name: 'sku', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(13, 4144384176469534476), name: 'weight', type: 6, flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(14, 2316847073759280543),
            name: 'toOneDimensionsId',
            type: 11,
            flags: 520,
            indexId: const obx_int.IdUid(2, 9107861225221601972),
            relationTarget: 'LocalDimensions'),
        obx_int.ModelProperty(id: const obx_int.IdUid(15, 1934741029761377464), name: 'warrantyInformation', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(16, 6043429016929366377), name: 'shippingInformation', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(17, 336167009869936693), name: 'availabilityStatus', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(18, 399134745622610973), name: 'returnPolicy', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(19, 151516259473102985), name: 'minimumOrderQuantity', type: 6, flags: 0),
        obx_int.ModelProperty(
            id: const obx_int.IdUid(20, 6606229142364230771),
            name: 'toOneMetaId',
            type: 11,
            flags: 520,
            indexId: const obx_int.IdUid(3, 6644423280066972976),
            relationTarget: 'LocalMeta'),
        obx_int.ModelProperty(id: const obx_int.IdUid(21, 6363087237868859008), name: 'images', type: 30, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(22, 5295875058168480462), name: 'thumbnail', type: 9, flags: 0)
      ],
      relations: <obx_int.ModelRelation>[
        obx_int.ModelRelation(
            id: const obx_int.IdUid(1, 939601381664599836), name: 'toManyReviews', targetId: const obx_int.IdUid(4, 2553504931193802387))
      ],
      backlinks: <obx_int.ModelBacklink>[]),
  obx_int.ModelEntity(
      id: const obx_int.IdUid(4, 2553504931193802387),
      name: 'LocalReview',
      lastPropertyId: const obx_int.IdUid(6, 848291459264687046),
      flags: 0,
      properties: <obx_int.ModelProperty>[
        obx_int.ModelProperty(id: const obx_int.IdUid(1, 618133941657042797), name: 'id', type: 6, flags: 1),
        obx_int.ModelProperty(id: const obx_int.IdUid(2, 2038614113387283736), name: 'rating', type: 6, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(3, 5595383768533117153), name: 'comment', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(4, 8620874365921770796), name: 'date', type: 10, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(5, 5208266462371234448), name: 'reviewerName', type: 9, flags: 0),
        obx_int.ModelProperty(id: const obx_int.IdUid(6, 848291459264687046), name: 'reviewerEmail', type: 9, flags: 0)
      ],
      relations: <obx_int.ModelRelation>[],
      backlinks: <obx_int.ModelBacklink>[])
];

/// Shortcut for [obx.Store.new] that passes [getObjectBoxModel] and for Flutter
/// apps by default a [directory] using `defaultStoreDirectory()` from the
/// ObjectBox Flutter library.
///
/// Note: for desktop apps it is recommended to specify a unique [directory].
///
/// See [obx.Store.new] for an explanation of all parameters.
///
/// For Flutter apps, also calls `loadObjectBoxLibraryAndroidCompat()` from
/// the ObjectBox Flutter library to fix loading the native ObjectBox library
/// on Android 6 and older.
Future<obx.Store> openStore(
    {String? directory,
    int? maxDBSizeInKB,
    int? maxDataSizeInKB,
    int? fileMode,
    int? maxReaders,
    bool queriesCaseSensitiveDefault = true,
    String? macosApplicationGroup}) async {
  await loadObjectBoxLibraryAndroidCompat();
  return obx.Store(getObjectBoxModel(),
      directory: directory ?? (await defaultStoreDirectory()).path,
      maxDBSizeInKB: maxDBSizeInKB,
      maxDataSizeInKB: maxDataSizeInKB,
      fileMode: fileMode,
      maxReaders: maxReaders,
      queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
      macosApplicationGroup: macosApplicationGroup);
}

/// Returns the ObjectBox model definition for this project for use with
/// [obx.Store.new].
obx_int.ModelDefinition getObjectBoxModel() {
  final model = obx_int.ModelInfo(
      entities: _entities,
      lastEntityId: const obx_int.IdUid(4, 2553504931193802387),
      lastIndexId: const obx_int.IdUid(3, 6644423280066972976),
      lastRelationId: const obx_int.IdUid(1, 939601381664599836),
      lastSequenceId: const obx_int.IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, obx_int.EntityDefinition>{
    LocalDimensions: obx_int.EntityDefinition<LocalDimensions>(
        model: _entities[0],
        toOneRelations: (LocalDimensions object) => [],
        toManyRelations: (LocalDimensions object) => {},
        getId: (LocalDimensions object) => object.id,
        setId: (LocalDimensions object, int id) {
          object.id = id;
        },
        objectToFB: (LocalDimensions object, fb.Builder fbb) {
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addFloat64(1, object.width);
          fbb.addFloat64(2, object.height);
          fbb.addFloat64(3, object.depth);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final widthParam = const fb.Float64Reader().vTableGetNullable(buffer, rootOffset, 6);
          final heightParam = const fb.Float64Reader().vTableGetNullable(buffer, rootOffset, 8);
          final depthParam = const fb.Float64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final object = LocalDimensions(id: idParam, width: widthParam, height: heightParam, depth: depthParam);

          return object;
        }),
    LocalMeta: obx_int.EntityDefinition<LocalMeta>(
        model: _entities[1],
        toOneRelations: (LocalMeta object) => [],
        toManyRelations: (LocalMeta object) => {},
        getId: (LocalMeta object) => object.id,
        setId: (LocalMeta object, int id) {
          object.id = id;
        },
        objectToFB: (LocalMeta object, fb.Builder fbb) {
          final barcodeOffset = object.barcode == null ? null : fbb.writeString(object.barcode!);
          final qrCodeOffset = object.qrCode == null ? null : fbb.writeString(object.qrCode!);
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.createdAt?.millisecondsSinceEpoch);
          fbb.addInt64(2, object.updatedAt?.millisecondsSinceEpoch);
          fbb.addOffset(3, barcodeOffset);
          fbb.addOffset(4, qrCodeOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final createdAtValue = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 6);
          final updatedAtValue = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 8);
          final idParam = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final createdAtParam = createdAtValue == null ? null : DateTime.fromMillisecondsSinceEpoch(createdAtValue);
          final updatedAtParam = updatedAtValue == null ? null : DateTime.fromMillisecondsSinceEpoch(updatedAtValue);
          final barcodeParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 10);
          final qrCodeParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 12);
          final object =
              LocalMeta(id: idParam, createdAt: createdAtParam, updatedAt: updatedAtParam, barcode: barcodeParam, qrCode: qrCodeParam);

          return object;
        }),
    LocalProduct: obx_int.EntityDefinition<LocalProduct>(
        model: _entities[2],
        toOneRelations: (LocalProduct object) => [object.toOneDimensions, object.toOneMeta],
        toManyRelations: (LocalProduct object) => {obx_int.RelInfo<LocalProduct>.toMany(1, object.id): object.toManyReviews},
        getId: (LocalProduct object) => object.id,
        setId: (LocalProduct object, int id) {
          object.id = id;
        },
        objectToFB: (LocalProduct object, fb.Builder fbb) {
          final titleOffset = object.title == null ? null : fbb.writeString(object.title!);
          final descriptionOffset = object.description == null ? null : fbb.writeString(object.description!);
          final categoryOffset = object.category == null ? null : fbb.writeString(object.category!);
          final tagsOffset = object.tags == null ? null : fbb.writeList(object.tags!.map(fbb.writeString).toList(growable: false));
          final brandOffset = object.brand == null ? null : fbb.writeString(object.brand!);
          final skuOffset = object.sku == null ? null : fbb.writeString(object.sku!);
          final warrantyInformationOffset = object.warrantyInformation == null ? null : fbb.writeString(object.warrantyInformation!);
          final shippingInformationOffset = object.shippingInformation == null ? null : fbb.writeString(object.shippingInformation!);
          final availabilityStatusOffset = object.availabilityStatus == null ? null : fbb.writeString(object.availabilityStatus!);
          final returnPolicyOffset = object.returnPolicy == null ? null : fbb.writeString(object.returnPolicy!);
          final imagesOffset = object.images == null ? null : fbb.writeList(object.images!.map(fbb.writeString).toList(growable: false));
          final thumbnailOffset = object.thumbnail == null ? null : fbb.writeString(object.thumbnail!);
          fbb.startTable(23);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.productId);
          fbb.addOffset(2, titleOffset);
          fbb.addOffset(3, descriptionOffset);
          fbb.addOffset(4, categoryOffset);
          fbb.addFloat64(5, object.price);
          fbb.addFloat64(6, object.discountPercentage);
          fbb.addFloat64(7, object.rating);
          fbb.addInt64(8, object.stock);
          fbb.addOffset(9, tagsOffset);
          fbb.addOffset(10, brandOffset);
          fbb.addOffset(11, skuOffset);
          fbb.addInt64(12, object.weight);
          fbb.addInt64(13, object.toOneDimensions.targetId);
          fbb.addOffset(14, warrantyInformationOffset);
          fbb.addOffset(15, shippingInformationOffset);
          fbb.addOffset(16, availabilityStatusOffset);
          fbb.addOffset(17, returnPolicyOffset);
          fbb.addInt64(18, object.minimumOrderQuantity);
          fbb.addInt64(19, object.toOneMeta.targetId);
          fbb.addOffset(20, imagesOffset);
          fbb.addOffset(21, thumbnailOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final idParam = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final productIdParam = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 6);
          final titleParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 8);
          final descriptionParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 10);
          final categoryParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 12);
          final priceParam = const fb.Float64Reader().vTableGetNullable(buffer, rootOffset, 14);
          final discountPercentageParam = const fb.Float64Reader().vTableGetNullable(buffer, rootOffset, 16);
          final ratingParam = const fb.Float64Reader().vTableGetNullable(buffer, rootOffset, 18);
          final stockParam = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 20);
          final tagsParam =
              const fb.ListReader<String>(fb.StringReader(asciiOptimization: true), lazy: false).vTableGetNullable(buffer, rootOffset, 22);
          final brandParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 24);
          final skuParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 26);
          final weightParam = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 28);
          final warrantyInformationParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 32);
          final shippingInformationParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 34);
          final availabilityStatusParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 36);
          final returnPolicyParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 38);
          final minimumOrderQuantityParam = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 40);
          final imagesParam =
              const fb.ListReader<String>(fb.StringReader(asciiOptimization: true), lazy: false).vTableGetNullable(buffer, rootOffset, 44);
          final thumbnailParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 46);
          final object = LocalProduct(
              id: idParam,
              productId: productIdParam,
              title: titleParam,
              description: descriptionParam,
              category: categoryParam,
              price: priceParam,
              discountPercentage: discountPercentageParam,
              rating: ratingParam,
              stock: stockParam,
              tags: tagsParam,
              brand: brandParam,
              sku: skuParam,
              weight: weightParam,
              warrantyInformation: warrantyInformationParam,
              shippingInformation: shippingInformationParam,
              availabilityStatus: availabilityStatusParam,
              returnPolicy: returnPolicyParam,
              minimumOrderQuantity: minimumOrderQuantityParam,
              images: imagesParam,
              thumbnail: thumbnailParam);
          object.toOneDimensions.targetId = const fb.Int64Reader().vTableGet(buffer, rootOffset, 30, 0);
          object.toOneDimensions.attach(store);
          object.toOneMeta.targetId = const fb.Int64Reader().vTableGet(buffer, rootOffset, 42, 0);
          object.toOneMeta.attach(store);
          obx_int.InternalToManyAccess.setRelInfo<LocalProduct>(
              object.toManyReviews, store, obx_int.RelInfo<LocalProduct>.toMany(1, object.id));
          return object;
        }),
    LocalReview: obx_int.EntityDefinition<LocalReview>(
        model: _entities[3],
        toOneRelations: (LocalReview object) => [],
        toManyRelations: (LocalReview object) => {},
        getId: (LocalReview object) => object.id,
        setId: (LocalReview object, int id) {
          object.id = id;
        },
        objectToFB: (LocalReview object, fb.Builder fbb) {
          final commentOffset = object.comment == null ? null : fbb.writeString(object.comment!);
          final reviewerNameOffset = object.reviewerName == null ? null : fbb.writeString(object.reviewerName!);
          final reviewerEmailOffset = object.reviewerEmail == null ? null : fbb.writeString(object.reviewerEmail!);
          fbb.startTable(7);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.rating);
          fbb.addOffset(2, commentOffset);
          fbb.addInt64(3, object.date?.millisecondsSinceEpoch);
          fbb.addOffset(4, reviewerNameOffset);
          fbb.addOffset(5, reviewerEmailOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (obx.Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);
          final dateValue = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 10);
          final idParam = const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0);
          final ratingParam = const fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 6);
          final commentParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 8);
          final dateParam = dateValue == null ? null : DateTime.fromMillisecondsSinceEpoch(dateValue);
          final reviewerNameParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 12);
          final reviewerEmailParam = const fb.StringReader(asciiOptimization: true).vTableGetNullable(buffer, rootOffset, 14);
          final object = LocalReview(
              id: idParam,
              rating: ratingParam,
              comment: commentParam,
              date: dateParam,
              reviewerName: reviewerNameParam,
              reviewerEmail: reviewerEmailParam);

          return object;
        })
  };

  return obx_int.ModelDefinition(model, bindings);
}

/// [LocalDimensions] entity fields to define ObjectBox queries.
class LocalDimensions_ {
  /// See [LocalDimensions.id].
  static final id = obx.QueryIntegerProperty<LocalDimensions>(_entities[0].properties[0]);

  /// See [LocalDimensions.width].
  static final width = obx.QueryDoubleProperty<LocalDimensions>(_entities[0].properties[1]);

  /// See [LocalDimensions.height].
  static final height = obx.QueryDoubleProperty<LocalDimensions>(_entities[0].properties[2]);

  /// See [LocalDimensions.depth].
  static final depth = obx.QueryDoubleProperty<LocalDimensions>(_entities[0].properties[3]);
}

/// [LocalMeta] entity fields to define ObjectBox queries.
class LocalMeta_ {
  /// See [LocalMeta.id].
  static final id = obx.QueryIntegerProperty<LocalMeta>(_entities[1].properties[0]);

  /// See [LocalMeta.createdAt].
  static final createdAt = obx.QueryDateProperty<LocalMeta>(_entities[1].properties[1]);

  /// See [LocalMeta.updatedAt].
  static final updatedAt = obx.QueryDateProperty<LocalMeta>(_entities[1].properties[2]);

  /// See [LocalMeta.barcode].
  static final barcode = obx.QueryStringProperty<LocalMeta>(_entities[1].properties[3]);

  /// See [LocalMeta.qrCode].
  static final qrCode = obx.QueryStringProperty<LocalMeta>(_entities[1].properties[4]);
}

/// [LocalProduct] entity fields to define ObjectBox queries.
class LocalProduct_ {
  /// See [LocalProduct.id].
  static final id = obx.QueryIntegerProperty<LocalProduct>(_entities[2].properties[0]);

  /// See [LocalProduct.productId].
  static final productId = obx.QueryIntegerProperty<LocalProduct>(_entities[2].properties[1]);

  /// See [LocalProduct.title].
  static final title = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[2]);

  /// See [LocalProduct.description].
  static final description = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[3]);

  /// See [LocalProduct.category].
  static final category = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[4]);

  /// See [LocalProduct.price].
  static final price = obx.QueryDoubleProperty<LocalProduct>(_entities[2].properties[5]);

  /// See [LocalProduct.discountPercentage].
  static final discountPercentage = obx.QueryDoubleProperty<LocalProduct>(_entities[2].properties[6]);

  /// See [LocalProduct.rating].
  static final rating = obx.QueryDoubleProperty<LocalProduct>(_entities[2].properties[7]);

  /// See [LocalProduct.stock].
  static final stock = obx.QueryIntegerProperty<LocalProduct>(_entities[2].properties[8]);

  /// See [LocalProduct.tags].
  static final tags = obx.QueryStringVectorProperty<LocalProduct>(_entities[2].properties[9]);

  /// See [LocalProduct.brand].
  static final brand = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[10]);

  /// See [LocalProduct.sku].
  static final sku = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[11]);

  /// See [LocalProduct.weight].
  static final weight = obx.QueryIntegerProperty<LocalProduct>(_entities[2].properties[12]);

  /// See [LocalProduct.toOneDimensions].
  static final toOneDimensions = obx.QueryRelationToOne<LocalProduct, LocalDimensions>(_entities[2].properties[13]);

  /// See [LocalProduct.warrantyInformation].
  static final warrantyInformation = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[14]);

  /// See [LocalProduct.shippingInformation].
  static final shippingInformation = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[15]);

  /// See [LocalProduct.availabilityStatus].
  static final availabilityStatus = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[16]);

  /// See [LocalProduct.returnPolicy].
  static final returnPolicy = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[17]);

  /// See [LocalProduct.minimumOrderQuantity].
  static final minimumOrderQuantity = obx.QueryIntegerProperty<LocalProduct>(_entities[2].properties[18]);

  /// See [LocalProduct.toOneMeta].
  static final toOneMeta = obx.QueryRelationToOne<LocalProduct, LocalMeta>(_entities[2].properties[19]);

  /// See [LocalProduct.images].
  static final images = obx.QueryStringVectorProperty<LocalProduct>(_entities[2].properties[20]);

  /// See [LocalProduct.thumbnail].
  static final thumbnail = obx.QueryStringProperty<LocalProduct>(_entities[2].properties[21]);

  /// see [LocalProduct.toManyReviews]
  static final toManyReviews = obx.QueryRelationToMany<LocalProduct, LocalReview>(_entities[2].relations[0]);
}

/// [LocalReview] entity fields to define ObjectBox queries.
class LocalReview_ {
  /// See [LocalReview.id].
  static final id = obx.QueryIntegerProperty<LocalReview>(_entities[3].properties[0]);

  /// See [LocalReview.rating].
  static final rating = obx.QueryIntegerProperty<LocalReview>(_entities[3].properties[1]);

  /// See [LocalReview.comment].
  static final comment = obx.QueryStringProperty<LocalReview>(_entities[3].properties[2]);

  /// See [LocalReview.date].
  static final date = obx.QueryDateProperty<LocalReview>(_entities[3].properties[3]);

  /// See [LocalReview.reviewerName].
  static final reviewerName = obx.QueryStringProperty<LocalReview>(_entities[3].properties[4]);

  /// See [LocalReview.reviewerEmail].
  static final reviewerEmail = obx.QueryStringProperty<LocalReview>(_entities[3].properties[5]);
}
