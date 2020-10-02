import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:fortnite_api/models/models.dart';
import 'package:fortnite_api/repositories/repositories.dart';

main(List<String> args) async {
  // Get playlists
  PlayListRepository playListRepository = PlayListRepository(
      playListApiClient: PlayListApiClient(httpClient: http.Client()));

  BannerRepository bannerRepository = BannerRepository(
      bannerApiClient: BannerApiClient(httpClient: http.Client()));

  // Get Playlist by id
  List<PlayList> playLists = await playListRepository.fetchPlayList();
  for (var playList in playLists) {
    print(playList.description);
  }

  // Get banners
  List<Banner> banners = await bannerRepository.fetchBanners();
  for (var banner in banners) {
    print(banner.images.icon);
  }

  // Get banner colors
  List<BannerColor> bannerColors = await bannerRepository.fetchColors();
  for (var banner in bannerColors) {
    print(banner.color);
  }

  exit(0);
}
