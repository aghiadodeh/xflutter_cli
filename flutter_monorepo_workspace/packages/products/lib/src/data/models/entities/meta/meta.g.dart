// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meta _$MetaFromJson(Map json) => _Meta(
  createdAt: json['createdAt'] == null ? null : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt'] as String),
  barcode: json['barcode'] as String?,
  qrCode: json['qrCode'] as String?,
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'barcode': instance.barcode,
  'qrCode': instance.qrCode,
};
