import 'package:json_annotation/json_annotation.dart';

part 'duo.g.dart';

@JsonSerializable()
class Duo {
  final int top5;
  final int top12;
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

  Duo({
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
    this.top5,
    this.top12,
  });

  factory Duo.fromJson(Map<String, dynamic> json) => _$DuoFromJson(json);

  Map<String, dynamic> toJson() => _$DuoToJson(this);
}
