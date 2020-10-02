import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import 'package:fortnite_api/utils/httpUtil.dart';
import 'package:fortnite_api/models/banner.dart';

class BannerApiClient {
  final http.Client httpClient;

  BannerApiClient({
    @required this.httpClient,
  }) : assert(httpClient != null);

  Future<List<Banner>> fetchBanner() async {
    List json = await fetchUrlResource('banners', this.httpClient) as List;
    return json.map((BannerJson) => Banner.fromJson(BannerJson)).toList();
  }

  Future<List<BannerColor>> fetchBannerColors() async {
    List json =
        await fetchUrlResource('banners/colors', this.httpClient) as List;

    return json
        .map((BannerColorsJson) => BannerColor.fromJson(BannerColorsJson))
        .toList();
  }
}
