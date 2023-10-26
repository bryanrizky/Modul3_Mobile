import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:latihan_modul3/app/data/models/Welcome.dart';

class ApiService {
  static Future<Welcome> fetchData() async {
    // final response = await http.get(Uri.parse('https://api.example.com/data'));
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return Welcome.fromJson(jsonData);
    } else {
      throw Exception('Gagal fetchdata');
    }
  }
}
