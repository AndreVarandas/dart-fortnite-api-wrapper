// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'br_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BrMap _$BrMapFromJson(Map<String, dynamic> json) {
  return BrMap(
    images: json['images'] == null
        ? null
        : Image.fromJson(json['images'] as Map<String, dynamic>),
    pois: (json['pois'] as List)
        ?.map((e) => e == null ? null : Poi.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$BrMapToJson(BrMap instance) => <String, dynamic>{
      'images': instance.images,
      'pois': instance.pois,
    };
