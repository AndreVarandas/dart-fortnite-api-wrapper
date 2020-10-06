// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_pad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GamePad _$GamePadFromJson(Map<String, dynamic> json) {
  return GamePad(
    all: json['all'] == null
        ? null
        : Overall.fromJson(json['all'] as Map<String, dynamic>),
    solo: json['solo'] == null
        ? null
        : Solo.fromJson(json['solo'] as Map<String, dynamic>),
    duo: json['duo'] == null
        ? null
        : Duo.fromJson(json['duo'] as Map<String, dynamic>),
    trio: json['trio'] == null
        ? null
        : Trio.fromJson(json['trio'] as Map<String, dynamic>),
    squad: json['squad'] == null
        ? null
        : Squad.fromJson(json['squad'] as Map<String, dynamic>),
    ltm: json['ltm'] == null
        ? null
        : Ltm.fromJson(json['ltm'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GamePadToJson(GamePad instance) => <String, dynamic>{
      'all': instance.all,
      'solo': instance.solo,
      'duo': instance.duo,
      'trio': instance.trio,
      'squad': instance.squad,
      'ltm': instance.ltm,
    };
