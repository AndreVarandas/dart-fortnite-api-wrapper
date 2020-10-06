import 'package:fortnite_api/api/accounts/data/duo.dart';
import 'package:fortnite_api/api/accounts/data/ltm.dart';
import 'package:fortnite_api/api/accounts/data/overall.dart';
import 'package:fortnite_api/api/accounts/data/solo.dart';
import 'package:fortnite_api/api/accounts/data/squad.dart';
import 'package:fortnite_api/api/accounts/data/trio.dart';

import 'package:json_annotation/json_annotation.dart';

part 'touch.g.dart';

@JsonSerializable()
class Touch {
  final Overall overall;
  final Solo solo;
  final Duo duo;
  final Trio trio;
  final Squad squad;
  final Ltm ltm;

  Touch({this.overall, this.solo, this.duo, this.trio, this.squad, this.ltm});

  factory Touch.fromJson(Map<String, dynamic> json) =>
      _$TouchFromJson(json);
  Map<String, dynamic> toJson() => _$TouchToJson(this);
}
