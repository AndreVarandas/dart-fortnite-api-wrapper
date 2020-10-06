import 'package:json_annotation/json_annotation.dart';

part 'battle_pass.g.dart';

@JsonSerializable()
class BattlePass {
  final int level;
  final int progress;

  BattlePass({this.level, this.progress});

  factory BattlePass.fromJson(Map<String, dynamic> json) =>
      _$BattlePassFromJson(json);
  Map<String, dynamic> toJson() => _$BattlePassToJson(this);
}
