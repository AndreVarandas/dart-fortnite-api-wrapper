import 'package:json_annotation/json_annotation.dart';

part 'ltm.g.dart';

@JsonSerializable()
class Ltm {
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

  Ltm(
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
      this.lastModified});

  factory Ltm.fromJson(Map<String, dynamic> json) => _$LtmFromJson(json);

  Map<String, dynamic> toJson() => _$LtmToJson(this);
}
