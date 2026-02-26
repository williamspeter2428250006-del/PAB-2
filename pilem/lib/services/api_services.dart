import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiServices {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey =
      "570ab6b34423960e3129dfbf45be11da&status=1&mode=0";
  Future<List<Map<String, dynamic>>> getAllMovie() async {
    final response = await http.get(Uri.parse("$baseUrl/movie/now_playing?api_key=$apiKey"));
    final data = json.decode(response.body);
    return List<Map<String, dynamic>>.from(data['result']);
  }
}
