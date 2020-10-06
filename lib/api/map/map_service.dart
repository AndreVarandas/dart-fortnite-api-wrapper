import 'package:meta/meta.dart';

import 'package:fortnite_api/api/fortnite_client.dart';
import 'package:fortnite_api/api/map/data/br_map.dart';
import 'package:fortnite_api/src/utils/transforms.dart';

class MapService {
  final FortniteClient client;

  const MapService({@required this.client});

  Future<BrMap> fetchMapInfo({
    TransformResponse<BrMap> transform = defaultBrMapTransform,
  }) async {
    return client.get(Uri.https('fortnite-api.com', 'v1/map')).then(transform);
  }
}
