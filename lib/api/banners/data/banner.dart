import 'package:json_annotation/json_annotation.dart';

part 'banner.g.dart';

@JsonSerializable()
class BannerImages {
  final String smallIcon;
  final String icon;

  BannerImages({this.smallIcon, this.icon});

  factory BannerImages.fromJson(Map<String, dynamic> json) =>
      _$BannerImagesFromJson(json);
  Map<String, dynamic> toJson() => _$BannerImagesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Banner {
  final String id;
  final String devName;
  final String name;
  final String description;
  final String category;
  final BannerImages images;

  Banner(
      {this.id,
      this.devName,
      this.name,
      this.description,
      this.category,
      this.images});

  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
  Map<String, dynamic> toJson() => _$BannerToJson(this);
}

@JsonSerializable()
class BannerColor {
  final String id;
  final String color;
  final String category;
  final int subCategoryGroup;

  BannerColor({this.id, this.color, this.category, this.subCategoryGroup});
  factory BannerColor.fromJson(Map<String, dynamic> json) =>
      _$BannerColorFromJson(json);
  Map<String, dynamic> toJson() => _$BannerColorToJson(this);
}
