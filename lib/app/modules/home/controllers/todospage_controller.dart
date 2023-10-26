import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan_modul3/app/data/models/Welcome.dart';

class TodospageController extends GetxController {
  // late Future<Welcome> _futureTodos;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    // _futureTodos = fetchTodos();
  }

  Future<Welcome> fetchTodos() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/todos/5'));
    if (response.statusCode == 200) {
      return Welcome.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}
