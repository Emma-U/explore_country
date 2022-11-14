import 'dart:convert';

import 'package:explore/model/country.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'https://restcountries.com/v3.1/all';

class CountryService {
  Future<List<Country>> fetchData() async {
    // Parse the baseUrl
    final uri = Uri.parse(baseUrl);

    // Make the request
    final response = await http.get(uri);

    // Check if the response is successful§
    if (response.statusCode == 200) {
      // Decode the response body
      final List<dynamic> body = jsonDecode(response.body);

      // Convert the body to a list of countries
      final List<Country> countries =
          body.map((e) => Country.fromJson(e)).toList();

      // Return the list of countries
      return countries;
    } else {
      return [];
    }
  }
}
