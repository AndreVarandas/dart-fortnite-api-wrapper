import 'dart:async';

import 'package:meta/meta.dart';

import 'package:fortnite_api/models/play_list.dart';
import 'package:fortnite_api/repositories/play_list_api_client.dart';

class PlayListRepository {
  final PlayListApiClient playListApiClient;

  PlayListRepository({@required this.playListApiClient})
      : assert(playListApiClient != null);

  Future<List<PlayList>> fetchPlayList() async {
    return await playListApiClient.fetchPlayList();
  }

  Future<PlayList> fetchPlayListById(String id) async {
    return await playListApiClient.fetchPlayListById(id);
  }
}
