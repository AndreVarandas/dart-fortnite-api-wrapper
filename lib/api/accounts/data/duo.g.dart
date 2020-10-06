// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Duo _$DuoFromJson(Map<String, dynamic> json) {
  return Duo(
    score: json['score'] as int,
    scorePerMin: (json['scorePerMin'] as num)?.toDouble(),
    scorePerMatch: (json['scorePerMatch'] as num)?.toDouble(),
    wins: json['wins'] as int,
    kills: json['kills'] as int,
    killsPerMin: (json['killsPerMin'] as num)?.toDouble(),
    killsPerMatch: (json['killsPerMatch'] as num)?.toDouble(),
    deaths: json['deaths'] as int,
    kd: (json['kd'] as num)?.toDouble(),
    matches: json['matches'] as int,
    winRate: (json['winRate'] as num)?.toDouble(),
    minutesPlayed: json['minutesPlayed'] as int,
    playersOutlived: json['playersOutlived'] as int,
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    top5: json['top5'] as int,
    top12: json['top12'] as int,
  );
}

Map<String, dynamic> _$DuoToJson(Duo instance) => <String, dynamic>{
      'top5': instance.top5,
      'top12': instance.top12,
      'score': instance.score,
      'scorePerMin': instance.scorePerMin,
      'scorePerMatch': instance.scorePerMatch,
      'wins': instance.wins,
      'kills': instance.kills,
      'killsPerMin': instance.killsPerMin,
      'killsPerMatch': instance.killsPerMatch,
      'deaths': instance.deaths,
      'kd': instance.kd,
      'matches': instance.matches,
      'winRate': instance.winRate,
      'minutesPlayed': instance.minutesPlayed,
      'playersOutlived': instance.playersOutlived,
      'lastModified': instance.lastModified?.toIso8601String(),
    };
