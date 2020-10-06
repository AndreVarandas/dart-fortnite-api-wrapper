import 'package:fortnite_api/api/map/data/image.dart';
import 'package:fortnite_api/api/map/data/poi.dart';
import 'package:json_annotation/json_annotation.dart';

part 'br_map.g.dart';

@JsonSerializable()
class BrMap {
  final Image images;
  final List<Poi> pois;

  BrMap({this.images, this.pois});

  factory BrMap.fromJson(Map<String, dynamic> json) =>
      _$BrMapFromJson(json);
  Map<String, dynamic> toJson() => _$BrMapToJson(this);
}
