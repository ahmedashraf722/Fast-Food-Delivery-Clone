import 'package:http/http.dart' as http;

class HttpHelper {
  static init() {
    http.Client();
  }

  static Future<dynamic> get(String url,
      {required Map<String, String> headers}) async {
    return await http.get(Uri.parse(url), headers: headers);
  }

  static Future<dynamic> post(String url,
      {required Map<String, String> headers, body}) async {
    return await http.post(Uri.parse(url), headers: headers, body: body);
  }

  static Future<dynamic> put(String url,
      {required Map<String, String> headers, body}) async {
    return await http.put(Uri.parse(url), headers: headers, body: body);
  }

  static Future<dynamic> delete(String url,
      {required Map<String, String> headers, body}) async {
    return await http.delete(Uri.parse(url), headers: headers, body: body);
  }

  static Future<dynamic> patch(String url,
      {required Map<String, String> headers, body}) async {
    return await http.patch(Uri.parse(url), headers: headers, body: body);
  }

  static Future<dynamic> head(String url,
      {required Map<String, String> headers, body}) async {
    return await http.head(Uri.parse(url), headers: headers);
  }
}
