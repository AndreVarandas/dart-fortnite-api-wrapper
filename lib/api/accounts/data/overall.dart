import 'package:json_annotation/json_annotation.dart';

part 'overall.g.dart';

@JsonSerializable()
class Overall {
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
  final int top5;
  final int top6;
  final int top10;
  final int top12;
  final int top25;

  Overall(
      {this.score,
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
      this.top5,
      this.top6,
      this.top10,
      this.top12,
      this.top25});

  factory Overall.fromJson(Map<String, dynamic> json) =>
      _$OverallFromJson(json);

  Map<String, dynamic> toJson() => _$OverallToJson(this);
}
