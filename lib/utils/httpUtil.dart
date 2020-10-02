import 'dart:convert';

import 'package:http/http.dart' as http;
import './constants.dart' as Constants;

Future fetchUrlResource(String endpoint, http.Client httpClient) async {
  final url = '${Constants.baseUrl}/$endpoint';
  final response = await httpClient.get(url);

  if (response.statusCode != 200) {
    throw new Exception('Error loading Banners');
  }

  return jsonDecode(response.body)['data'];
}
