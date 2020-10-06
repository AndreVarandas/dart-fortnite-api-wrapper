import 'package:meta/meta.dart';

import 'package:fortnite_api/fortnite_api.dart';
import 'package:fortnite_api/api/abstract_fortnite_client.dart';
import 'package:fortnite_api/api/banners/banner_service.dart';
import 'package:fortnite_api/api/play_lists/play_list_service.dart';
import 'package:fortnite_api/api/accounts/account_service.dart';
import 'package:fortnite_api/api/map/map_service.dart';

/// The [FortniteApi] provides the services used to make requests to the
/// Fortnite API.
///
/// The [client] is used by the services to make the authenticated requests.
/// By default, the [FortniteClient] can be used.
///
/// A single app wide instance of [FortniteApi] can be used to make continuous
/// requests.
class FortniteApi {
  /// The client to handle http requests.
  final AbstractFortniteClient client;

  /// Handles retrieving banners
  final BannerService bannerService;

  /// Handles retrieving playlists
  final PlayListService playListService;

  /// Handles retrieving stats
  final AccountService accountService;

  // Returns data & images of the BR map & POIs
  final MapService mapService;

  FortniteApi({@required this.client})
      : bannerService = BannerService(client: client),
        playListService = PlayListService(client: client),
        accountService = AccountService(client: client),
        mapService = MapService(client: client);
}
