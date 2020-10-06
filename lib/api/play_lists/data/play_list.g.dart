// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return Images(
    showcase: json['showcase'] as String,
    missionIcon: json['missionIcon'] as String,
  );
}

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'showcase': instance.showcase,
      'missionIcon': instance.missionIcon,
    };

PlayList _$PlayListFromJson(Map<String, dynamic> json) {
  return PlayList(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    gameType: json['gameType'] as String,
    minPlayers: json['minPlayers'] as int,
    maxPlayers: json['maxPlayers'] as int,
    maxTeams: json['maxTeams'] as int,
    maxTeamSize: json['maxTeamSize'] as int,
    maxSquads: json['maxSquads'] as int,
    maxSquadSize: json['maxSquadSize'] as int,
    isDefault: json['isDefault'] as bool,
    isTournament: json['isTournament'] as bool,
    isLimitedTimeMode: json['isLimitedTimeMode'] as bool,
    isLargeTeamGame: json['isLargeTeamGame'] as bool,
    accumulateToProfileStats: json['accumulateToProfileStats'] as bool,
    images: json['images'] == null
        ? null
        : Images.fromJson(json['images'] as Map<String, dynamic>),
    gameplayTags: json['gameplayTags'] as List,
    path: json['path'] as String,
    added:
        json['added'] == null ? null : DateTime.parse(json['added'] as String),
  );
}

Map<String, dynamic> _$PlayListToJson(PlayList instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'gameType': instance.gameType,
      'minPlayers': instance.minPlayers,
      'maxPlayers': instance.maxPlayers,
      'maxTeams': instance.maxTeams,
      'maxTeamSize': instance.maxTeamSize,
      'maxSquads': instance.maxSquads,
      'maxSquadSize': instance.maxSquadSize,
      'isDefault': instance.isDefault,
      'isTournament': instance.isTournament,
      'isLimitedTimeMode': instance.isLimitedTimeMode,
      'isLargeTeamGame': instance.isLargeTeamGame,
      'accumulateToProfileStats': instance.accumulateToProfileStats,
      'images': instance.images?.toJson(),
      'gameplayTags': instance.gameplayTags,
      'path': instance.path,
      'added': instance.added?.toIso8601String(),
    };
