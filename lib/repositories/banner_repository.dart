import 'dart:async';

import 'package:meta/meta.dart';

import 'package:fortnite_api/models/banner.dart';
import 'package:fortnite_api/repositories/banner_api_client.dart';

class BannerRepository {
  final BannerApiClient bannerApiClient;

  BannerRepository({@required this.bannerApiClient})
      : assert(BannerApiClient != null);

  Future<List<Banner>> fetchBanners() async {
    return await bannerApiClient.fetchBanner();
  }

  Future<List<BannerColor>> fetchColors() async {
    return await bannerApiClient.fetchBannerColors();
  }
}
