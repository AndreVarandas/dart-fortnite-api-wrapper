import 'package:json_annotation/json_annotation.dart';

import 'package:fortnite_api/api/accounts/data/duo.dart';
import 'package:fortnite_api/api/accounts/data/ltm.dart';
import 'package:fortnite_api/api/accounts/data/overall.dart';
import 'package:fortnite_api/api/accounts/data/solo.dart';
import 'package:fortnite_api/api/accounts/data/squad.dart';
import 'package:fortnite_api/api/accounts/data/trio.dart';

part 'all.g.dart';

@JsonSerializable()
class All {
  final Overall overall;
  final Solo solo;
  final Duo duo;
  final Trio trio;
  final Squad squad;
  final Ltm ltm;

  All({this.overall, this.solo, this.duo, this.trio, this.squad, this.ltm});

  factory All.fromJson(Map<String, dynamic> json) =>
      _$AllFromJson(json);
  Map<String, dynamic> toJson() => _$AllToJson(this);
}
