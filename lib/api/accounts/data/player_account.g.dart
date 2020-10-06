// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerAccount _$PlayerAccountFromJson(Map<String, dynamic> json) {
  return PlayerAccount(
    account: json['account'] == null
        ? null
        : Account.fromJson(json['account'] as Map<String, dynamic>),
    battlePass: json['battlePass'] == null
        ? null
        : BattlePass.fromJson(json['battlePass'] as Map<String, dynamic>),
    stats: json['stats'] == null
        ? null
        : Stats.fromJson(json['stats'] as Map<String, dynamic>),
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$PlayerAccountToJson(PlayerAccount instance) =>
    <String, dynamic>{
      'account': instance.account?.toJson(),
      'battlePass': instance.battlePass?.toJson(),
      'stats': instance.stats?.toJson(),
      'image': instance.image,
    };
