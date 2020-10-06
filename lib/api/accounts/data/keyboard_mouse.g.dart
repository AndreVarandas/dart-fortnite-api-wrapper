// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyboard_mouse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KeyboardMouse _$KeyboardMouseFromJson(Map<String, dynamic> json) {
  return KeyboardMouse(
    overall: json['overall'] == null
        ? null
        : Overall.fromJson(json['overall'] as Map<String, dynamic>),
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

Map<String, dynamic> _$KeyboardMouseToJson(KeyboardMouse instance) =>
    <String, dynamic>{
      'overall': instance.overall,
      'solo': instance.solo,
      'duo': instance.duo,
      'trio': instance.trio,
      'squad': instance.squad,
      'ltm': instance.ltm,
    };
