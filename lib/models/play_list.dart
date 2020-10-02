import 'package:json_annotation/json_annotation.dart';

part 'play_list.g.dart';

@JsonSerializable()
class Images {
  final String showcase;
  final String missionIcon;

  Images({this.showcase, this.missionIcon});

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}

/// An annotation for the code generator to know that this class needs the
/// JSON serialization logic to be generated.
@JsonSerializable(explicitToJson: true)
class PlayList {
  final String id;
  final String name;
  final String description;
  final String gameType;
  final int minPlayers;
  final int maxPlayers;
  final int maxTeams;
  final int maxTeamSize;
  final int maxSquads;
  final int maxSquadSize;
  final bool isDefault;
  final bool isTournament;
  final bool isLimitedTimeMode;
  final bool isLargeTeamGame;
  final bool accumulateToProfileStats;
  final Images images;
  final List gameplayTags;
  final String path;
  final DateTime added;

  PlayList(
      {this.id,
      this.name,
      this.description,
      this.gameType,
      this.minPlayers,
      this.maxPlayers,
      this.maxTeams,
      this.maxTeamSize,
      this.maxSquads,
      this.maxSquadSize,
      this.isDefault,
      this.isTournament,
      this.isLimitedTimeMode,
      this.isLargeTeamGame,
      this.accumulateToProfileStats,
      this.images,
      this.gameplayTags,
      this.path,
      this.added});

  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$PlayListFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory PlayList.fromJson(Map<String, dynamic> json) =>
      _$PlayListFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$PlayListToJson`.
  Map<String, dynamic> toJson() => _$PlayListToJson(this);
}
