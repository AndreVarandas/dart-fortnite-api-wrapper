import 'dart:async';

import 'package:meta/meta.dart';
import 'package:http/src/response.dart';
import 'package:http/http.dart' as http;

import 'package:fortnite_api/api/abstract_fortnite_client.dart';

const Duration _defaultTimeout = Duration(seconds: 10);

/// A function used to transform the response.
///
/// To prevent large computations from blocking the thread, response bodies are
/// decoded in an isolate by default.
typedef TransformResponse<T> = FutureOr<T> Function(Response response);

/// The default implementation for [FortniteClient]
///
/// Requests throw a [TimeoutException] when a request hasn't returned a
/// response for some time determined by [defaultTimeout]
///
/// If the received [Response.statusCode] is not a success (2xx), it is returned
/// as a [Future.error]. To handle these responses, catch the error and check
/// for the type to be a [Response].
class FortniteClient extends AbstractFortniteClient {
  FortniteClient(
      {@required this.apiKey, this.defaultTimeout = _defaultTimeout});

  String apiKey;

  /// The time it takes for a request to time out and throw [TimeoutExpectation]
  ///
  /// A request can override the default timeout independently.
  final Duration defaultTimeout;

  @override
  Future<Response> get(uri, {Map<String, String> headers, Duration timeout}) {
    Map<String, String> requestHeaders = buildRequestHeaders(headers);
    return http
        .get(uri, headers: requestHeaders)
        .timeout(timeout ?? defaultTimeout)
        .then((response) {
          return response.statusCode >= 200 && response.statusCode < 300
              ? response
              : Future.error(response);
        });
  }

  Map<String, String> buildRequestHeaders(Map<String, String> headers) {
    final Map<String, String> requestHeaders = {
      ...?{'x-api-key': apiKey },
      ...?headers
    };

    return requestHeaders;
  }
}
