import 'package:fortnite_api/api/accounts/data/duo.dart';
import 'package:fortnite_api/api/accounts/data/ltm.dart';
import 'package:fortnite_api/api/accounts/data/overall.dart';
import 'package:fortnite_api/api/accounts/data/solo.dart';
import 'package:fortnite_api/api/accounts/data/squad.dart';
import 'package:fortnite_api/api/accounts/data/trio.dart';

import 'package:json_annotation/json_annotation.dart';

part 'keyboard_mouse.g.dart';

@JsonSerializable()
class KeyboardMouse {
  final Overall overall;
  final Solo solo;
  final Duo duo;
  final Trio trio;
  final Squad squad;
  final Ltm ltm;

  KeyboardMouse(
      {this.overall, this.solo, this.duo, this.trio, this.squad, this.ltm});

  factory KeyboardMouse.fromJson(Map<String, dynamic> json) =>
      _$KeyboardMouseFromJson(json);

  Map<String, dynamic> toJson() => _$KeyboardMouseToJson(this);
}
