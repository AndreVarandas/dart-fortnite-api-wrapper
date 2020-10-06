import 'package:fortnite_api/api/accounts/data/duo.dart';
import 'package:fortnite_api/api/accounts/data/ltm.dart';
import 'package:fortnite_api/api/accounts/data/overall.dart';
import 'package:fortnite_api/api/accounts/data/solo.dart';
import 'package:fortnite_api/api/accounts/data/squad.dart';
import 'package:fortnite_api/api/accounts/data/trio.dart';

import 'package:json_annotation/json_annotation.dart';

part 'game_pad.g.dart';

@JsonSerializable()
class GamePad {
  final Overall all;
  final Solo solo;
  final Duo duo;
  final Trio trio;
  final Squad squad;
  final Ltm ltm;

  GamePad({this.all, this.solo, this.duo, this.trio, this.squad, this.ltm});

  factory GamePad.fromJson(Map<String, dynamic> json) =>
      _$GamePadFromJson(json);
  Map<String, dynamic> toJson() => _$GamePadToJson(this);
}
