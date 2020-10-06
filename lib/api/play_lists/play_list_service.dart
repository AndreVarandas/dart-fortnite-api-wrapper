import 'package:meta/meta.dart';

import 'package:fortnite_api/api/fortnite_client.dart';
import 'package:fortnite_api/api/play_lists/data/play_list.dart';
import 'package:fortnite_api/src/utils/transforms.dart';
import 'package:fortnite_api/src/utils/map_utils.dart';

class PlayListService {
  const PlayListService({
    @required this.client,
  });

  final FortniteClient client;

  Future<List<PlayList>> fetchPlayLists({
    TransformResponse<List<PlayList>> transform = defaultPlayListListTransform,
  }) async {
    return client
        .get(Uri.https('fortnite-api.com', 'v1/playlists'))
        .then(transform);
  }

  Future<PlayList> fetchPlayListById({
    @required String id,
    TransformResponse<PlayList> transform = defaultPlayListTransform,
  }) async {
    final params = <String, String>{}
      ..addParameter('id', id);

    return client
        .get(Uri.https('fortnite-api.com', 'v1/playlists/$id', params))
        .then(transform);
  }
}
