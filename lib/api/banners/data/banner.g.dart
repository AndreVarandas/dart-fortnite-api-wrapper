// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerImages _$BannerImagesFromJson(Map<String, dynamic> json) {
  return BannerImages(
    smallIcon: json['smallIcon'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$BannerImagesToJson(BannerImages instance) =>
    <String, dynamic>{
      'smallIcon': instance.smallIcon,
      'icon': instance.icon,
    };

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return Banner(
    id: json['id'] as String,
    devName: json['devName'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    category: json['category'] as String,
    images: json['images'] == null
        ? null
        : BannerImages.fromJson(json['images'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BannerToJson(Banner instance) => <String, dynamic>{
      'id': instance.id,
      'devName': instance.devName,
      'name': instance.name,
      'description': instance.description,
      'category': instance.category,
      'images': instance.images?.toJson(),
    };

BannerColor _$BannerColorFromJson(Map<String, dynamic> json) {
  return BannerColor(
    id: json['id'] as String,
    color: json['color'] as String,
    category: json['category'] as String,
    subCategoryGroup: json['subCategoryGroup'] as int,
  );
}

Map<String, dynamic> _$BannerColorToJson(BannerColor instance) =>
    <String, dynamic>{
      'id': instance.id,
      'color': instance.color,
      'category': instance.category,
      'subCategoryGroup': instance.subCategoryGroup,
    };
