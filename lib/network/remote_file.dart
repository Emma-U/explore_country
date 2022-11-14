import 'dart:convert';
import 'package:explore/model/country_model.dart';
import 'package:http/http.dart' as http;

class RemoteFile {
  static Future<List<CountryModel>> fetchData() async {
    const url = 'https://restcountries.com/v3.1/all';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final result = json as List<dynamic>;
    final users = result.map((e) {
      return CountryModel(
        name: e['name']['common'].toString(),
        dialing: e['flags']['png'],
      );
    }).toList();
    return users;
    // print('fetch complete');
  }
}
