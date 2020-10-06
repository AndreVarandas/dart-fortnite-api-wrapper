import 'package:json_annotation/json_annotation.dart';

import 'package:fortnite_api/api/map/data/location.dart';

part 'poi.g.dart';

@JsonSerializable()
class Poi {
  final String id;
  final String name;
  final Location location;

  Poi({this.id, this.name, this.location});

  factory Poi.fromJson(Map<String, dynamic> json) => _$PoiFromJson(json);

  Map<String, dynamic> toJson() => _$PoiToJson(this);
}
