import 'package:json_annotation/json_annotation.dart';

part 'trio.g.dart';

@JsonSerializable()
class Trio {
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
  final int top3;
  final int top6;

  Trio({
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
    this.top3,
    this.top6,
  });

  factory Trio.fromJson(Map<String, dynamic> json) => _$TrioFromJson(json);

  Map<String, dynamic> toJson() => _$TrioToJson(this);
}
