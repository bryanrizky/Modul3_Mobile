import 'package:get/get.dart';
import 'package:latihan_modul3/app/modules/home/bindings/todospage_binding.dart';
import 'package:latihan_modul3/app/modules/home/views/todospage_view.dart';
// import '../modules/home/bindings/home_binding.dart';
// import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // static const INITIAL = Routes.HOME;
  static const INITIAL = Routes.TODOSPAGE;

  static final routes = [
    // GetPage(
    //   name: _Paths.HOME,
    //   page: () => const HomeView(),
    //   binding: HomeBinding(),
    // ),
    GetPage(
      name: _Paths.TODOSPAGE,
      page: () => const TodosPage(),
      binding: TodospageBinding(),
    ),
  ];
}
