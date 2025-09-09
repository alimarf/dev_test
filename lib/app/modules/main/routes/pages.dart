import 'package:get/get.dart';

import '../presentation/main_binding.dart';
import '../presentation/main_view.dart';
import '../presentation/splash/splash_binding.dart';
import '../presentation/splash/splash_view.dart';

part 'routes.dart';

class MainPages {
  MainPages._();

  static final routes = [
    GetPage(
      name: _MainPaths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _MainPaths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
  ];
}
