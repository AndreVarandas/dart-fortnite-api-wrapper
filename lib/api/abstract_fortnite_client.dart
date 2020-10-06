import 'package:http/http.dart';

///
/// An abstraction to make http calls to the Fortnite api
///
/// implemented by [FortniteClient].
abstract class AbstractFortniteClient {
  const AbstractFortniteClient();

  Future<Response> get(dynamic uri,
      {Map<String, String> headers, Duration timeout});
}
