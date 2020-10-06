import 'package:fortnite_api/api/accounts/data/account.dart';
import 'package:fortnite_api/api/accounts/data/battle_pass.dart';
import 'package:fortnite_api/api/accounts/data/stats.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_account.g.dart';

@JsonSerializable(explicitToJson: true)
class PlayerAccount {
  final Account account;
  final BattlePass battlePass;
  final Stats stats;
  final String image;

  PlayerAccount({this.account, this.battlePass, this.stats, this.image});

  factory PlayerAccount.fromJson(Map<String, dynamic> json) =>
      _$PlayerAccountFromJson(json);
  Map<String, dynamic> toJson() => _$PlayerAccountToJson(this);
}