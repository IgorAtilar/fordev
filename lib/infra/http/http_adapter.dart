import 'dart:convert';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

import '../../data/http/http.dart';

class HttpAdapter implements HttpClient {
  final Client client;

  HttpAdapter({@required this.client});

  Future<Map> request({
    @required String url,
    @required String method,
    Map body,
  }) async {
    final jsonBody = body != null ? jsonEncode(body) : null;

    final headers = {
      'content-type': 'application/json',
      'accept': 'application/json',
    };

    final response = await client.post(url, headers: headers, body: jsonBody);

    return _handleResponse(response);
  }

  Map _handleResponse(Response response) {
    if (response.statusCode == 204 || response.body.isEmpty) {
      return null;
    }

    return jsonDecode(response.body);
  }
}
