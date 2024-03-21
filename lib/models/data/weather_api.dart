import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rest_api/models/data/i_weather.dart';

class IWeatherService {
  static Future<Results> fetchResults() async {
    const baseUrl = "https://api.hgbrasil.com/weather?key=b49403df";

    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body)['results'];
      Results results = Results.fromJson(data);
      return results;
    } else {
      print('Error: ${response.body}');
      print('Status Code: ${response.statusCode}');
      throw Exception('Failed to load data');
    }
  }
}
