import 'package:meta/meta.dart';

import 'package:fortnite_api/api/fortnite_client.dart';
import 'package:fortnite_api/api/banners/data/banner.dart';
import 'package:fortnite_api/src/utils/transforms.dart';

class BannerService {
  const BannerService({
    @required this.client,
  });

  final FortniteClient client;

  Future<List<Banner>> fetchBanners({
    TransformResponse<List<Banner>> transform = defaultBannerTransform,
  }) async {
    return client
        .get(Uri.https('fortnite-api.com', 'v1/banners'))
        .then(transform);
  }

  Future<List<BannerColor>> fetchBannerColors({
    TransformResponse<List<BannerColor>> transform =
        defaultBannerColorTransform,
  }) async {
    return client
        .get(Uri.https('fortnite-api.com', 'v1/banners/colors'))
        .then(transform);
  }
}
