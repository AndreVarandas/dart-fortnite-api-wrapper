import 'dart:convert';

import 'package:fortnite_api/api/map/data/br_map.dart';
import 'package:http/http.dart';

import 'package:fortnite_api/api/banners/data/banner.dart';
import 'package:fortnite_api/api/play_lists/data/play_list.dart';
import 'package:fortnite_api/api/accounts/data/player_account.dart';

/// Parses the [response] into a [Banner[]].
Future<List<Banner>> defaultBannerTransform(Response response) async {
  final json = jsonDecode(response.body)['data'] as List;
  return json.map((BannerJson) => Banner.fromJson(BannerJson)).toList();
}

/// Parses the [response] into a [BannerColor[]].
Future<List<BannerColor>> defaultBannerColorTransform(Response response) async {
  final json = jsonDecode(response.body)['data'] as List;
  return json
      .map((BannerColorJson) => BannerColor.fromJson(BannerColorJson))
      .toList();
}

/// Parses the [response] into a [PlayList[]].
Future<List<PlayList>> defaultPlayListListTransform(Response response) async {
  final json = jsonDecode(response.body)['data'] as List;
  return json.map((PlayListJson) => PlayList.fromJson(PlayListJson)).toList();
}

/// Parses the [response] into a [PlayList].
Future<PlayList> defaultPlayListTransform(Response response) async {
  final json = jsonDecode(response.body)['data'];
  return PlayList.fromJson(json);
}

/// Parses the [response] into a [PlayerAccount].
Future<PlayerAccount> defaultPlayerAccountTransform(Response response) async {
  final json = jsonDecode(response.body)['data'];
  return PlayerAccount.fromJson(json);
}

/// Parses the [response] into a [BrMap].
Future<BrMap> defaultBrMapTransform(Response response) async {
  final json = jsonDecode(response.body)['data'];
  return BrMap.fromJson(json);
}
