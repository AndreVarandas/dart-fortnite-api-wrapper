import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  final String blank;
  final String pois;

  Image({this.blank, this.pois});

  factory Image.fromJson(Map<String, dynamic> json) =>
      _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}