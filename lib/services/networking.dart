import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkingData {
  final String url;
  NetworkingData(this.url);
  Future<dynamic> getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
