import 'package:fortnite_api/api/accounts/data/all.dart';
import 'package:fortnite_api/api/accounts/data/game_pad.dart';
import 'package:fortnite_api/api/accounts/data/keyboard_mouse.dart';
import 'package:fortnite_api/api/accounts/data/touch.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stats.g.dart';

@JsonSerializable()
class Stats {
  final All all;
  final KeyboardMouse keyboardMouse;
  final GamePad gamepad;
  final Touch touch;

  Stats({this.all, this.keyboardMouse, this.gamepad, this.touch});

  factory Stats.fromJson(Map<String, dynamic> json) =>
      _$StatsFromJson(json);
  Map<String, dynamic> toJson() => _$StatsToJson(this);
}
