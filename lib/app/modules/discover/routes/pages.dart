import 'package:get/get.dart';

import '../presentation/discover_binding.dart';
import '../presentation/discover_view.dart';

part 'routes.dart';

class DiscoverPages {
  DiscoverPages._();

  static final routes = [
    GetPage(
      name: _DiscoverPaths.DISCOVER,
      page: () => const DiscoverView(),
      binding: DiscoverBinding(),
    ),
  ];
}
