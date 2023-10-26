// import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:http/http.dart' as http;
import 'package:latihan_modul3/app/modules/home/controllers/todospage_controller.dart';
import 'package:latihan_modul3/app/data/models/Welcome.dart';

class TodosPage extends StatefulWidget {
  const TodosPage({Key? key}) : super(key: key);
  @override
  State<TodosPage> createState() => _TodosPageState();
}

class _TodosPageState extends State<TodosPage> {
  final TodospageController controller = Get.put(TodospageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<Welcome>(
          future: controller.fetchTodos(),
          builder: (context, snapshot) {
            var state = snapshot.connectionState;

            if (state != ConnectionState.done) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Center(child: Text("${snapshot.error}"));
              } else {
                return const Text('');
              }
            }
          },
        ),
      ),
    );
  }
}
