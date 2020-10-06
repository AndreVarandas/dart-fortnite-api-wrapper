// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battle_pass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BattlePass _$BattlePassFromJson(Map<String, dynamic> json) {
  return BattlePass(
    level: json['level'] as int,
    progress: json['progress'] as int,
  );
}

Map<String, dynamic> _$BattlePassToJson(BattlePass instance) =>
    <String, dynamic>{
      'level': instance.level,
      'progress': instance.progress,
    };
