import 'package:get/get.dart';

import '../presentation/home_binding.dart';
import '../presentation/home_view.dart';

part 'routes.dart';

class HomePages {
  HomePages._();

  static final routes = [
    GetPage(
      name: _HomePaths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
