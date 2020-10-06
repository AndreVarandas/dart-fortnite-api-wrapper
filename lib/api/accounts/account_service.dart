import 'package:meta/meta.dart';

import 'package:fortnite_api/api/accounts/data/player_account.dart';
import 'package:fortnite_api/src/utils/transforms.dart';
import 'package:fortnite_api/api/fortnite_client.dart';
import 'package:fortnite_api/src/utils/map_utils.dart';

class AccountService {
  final FortniteClient client;

  const AccountService({
    @required this.client,
  });

  Future<PlayerAccount> fetchPlayerByName({
    @required String name,
    String accountType,
    String timeWindow,
    String image,
    TransformResponse<PlayerAccount> transform = defaultPlayerAccountTransform,
  }) async {
    final params = <String, String>{}
      ..addParameter('name', name)
      ..addParameter('accountType', accountType)
      ..addParameter('timeWindow', timeWindow)
      ..addParameter('image', image);

    return client
        .get(Uri.https('fortnite-api.com', 'v1/stats/br/v2', params))
        .then(transform);
  }

  Future<PlayerAccount> fetchPlayerById({
    @required String id,
    String timeWindow,
    String image,
    TransformResponse<PlayerAccount> transform = defaultPlayerAccountTransform,
  }) async {
    final params = <String, String>{}
      ..addParameter('timeWindow', timeWindow)
      ..addParameter('image', image);

    return client
        .get(Uri.https('fortnite-api.com', 'v1/stats/br/v2/$id', params))
        .then(transform);
  }
}
