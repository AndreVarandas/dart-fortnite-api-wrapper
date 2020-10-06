import 'package:json_annotation/json_annotation.dart';

part 'solo.g.dart';

@JsonSerializable()
class Solo {
  final int top10;
  final int top25;
  final int score;
  final double scorePerMin;
  final double scorePerMatch;
  final int wins;
  final int kills;
  final double killsPerMin;
  final double killsPerMatch;
  final int deaths;
  final double kd;
  final int matches;
  final double winRate;
  final int minutesPlayed;
  final int playersOutlived;
  final DateTime lastModified;

  Solo({
    this.score,
    this.scorePerMin,
    this.scorePerMatch,
    this.wins,
    this.kills,
    this.killsPerMin,
    this.killsPerMatch,
    this.deaths,
    this.kd,
    this.matches,
    this.winRate,
    this.minutesPlayed,
    this.playersOutlived,
    this.lastModified,
    this.top10,
    this.top25,
  });

  factory Solo.fromJson(Map<String, dynamic> json) => _$SoloFromJson(json);

  Map<String, dynamic> toJson() => _$SoloToJson(this);
}
