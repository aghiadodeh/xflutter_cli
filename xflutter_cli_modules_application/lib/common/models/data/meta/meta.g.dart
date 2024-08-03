// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaImpl _$$MetaImplFromJson(Map json) => _$MetaImpl(
      createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
      barcode: json['barcode'] as String?,
      qrCode: json['qr_code'] as String?,
    );

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) => <String, dynamic>{
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'barcode': instance.barcode,
      'qr_code': instance.qrCode,
    };
