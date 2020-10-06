// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return Stats(
    all: json['all'] == null
        ? null
        : All.fromJson(json['all'] as Map<String, dynamic>),
    keyboardMouse: json['keyboardMouse'] == null
        ? null
        : KeyboardMouse.fromJson(json['keyboardMouse'] as Map<String, dynamic>),
    gamepad: json['gamepad'] == null
        ? null
        : GamePad.fromJson(json['gamepad'] as Map<String, dynamic>),
    touch: json['touch'] == null
        ? null
        : Touch.fromJson(json['touch'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$StatsToJson(Stats instance) => <String, dynamic>{
      'all': instance.all,
      'keyboardMouse': instance.keyboardMouse,
      'gamepad': instance.gamepad,
      'touch': instance.touch,
    };
