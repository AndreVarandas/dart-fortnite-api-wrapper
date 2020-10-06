import 'dart:io';

import 'package:fortnite_api/fortnite_api.dart';

main(List<String> args) async {
  // Instantiate client
  final fortniteClient = FortniteApi(
      client:
          FortniteClient(apiKey: 'GET YOUR API KEY FROM https://dash.fortnite-api.com/'));

  // Get some info like:

  // BANNERS
  /*final banners = await fortniteClient.bannerService.fetchBanners();
  for (var banner in banners) {
    print(banner.description);
  }*/

  /*final bannerColors = await fortniteClient.bannerService.fetchBannerColors();
  for (var bannerColor in bannerColors) {
    print(bannerColor.color);
  }*/

  // PLAYLISTS
  /*final playLists = await fortniteClient.playListService.fetchPlayLists();
  for (var playList in playLists) {
    print(playList.id);
  }*/
  
  /*final playList = await fortniteClient.playListService.fetchPlayListById(id: 'Playlist_DefaultDuo_vs_Phoebe');
  print(playList.description);*/

  // STATS
  /*final playerAccount = await fortniteClient.accountService.fetchPlayerByName(name: 'ninja');
  print(playerAccount.account.id);*/

  // Ninja id: 4735ce9132924caf8a5b17789b40f79c
  // final playerAccount = await fortniteClient.accountService.fetchPlayerById(id: '4735ce9132924caf8a5b17789b40f79c');
  // print(playerAccount);

  // MAP
  // final mapInfo = await fortniteClient.mapService.fetchMapInfo();
  // print(mapInfo.pois.first);

  exit(0);
}
