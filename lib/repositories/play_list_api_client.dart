import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:fortnite_api/models/play_list.dart';
import 'package:fortnite_api/utils/constants.dart' as Constants;

class PlayListApiClient {
  final http.Client httpClient;

  PlayListApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<List<PlayList>> fetchPlayList() async {
    final url = '${Constants.baseUrl}/playlists';
    final response = await this.httpClient.get(url);

    if (response.statusCode != 200) {
      throw new Exception('Error loading playlists');
    }

    final json = jsonDecode(response.body)['data'] as List;

    List<PlayList> playLists =
        json.map((playListJson) => PlayList.fromJson(playListJson)).toList();

    return playLists;
  }

  Future<PlayList> fetchPlayListById(String id) async {
    final url = '${Constants.baseUrl}/playlists/$id';
    final response = await this.httpClient.get(url);

    if (response.statusCode != 200) {
      throw new Exception('Error loading playlists');
    }

    final json = jsonDecode(response.body)['data'];
    PlayList playLists = PlayList.fromJson(json);

    return playLists;
  }
}
