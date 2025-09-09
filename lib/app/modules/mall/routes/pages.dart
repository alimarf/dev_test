import 'package:get/get.dart';

import '../presentation/mall_binding.dart';
import '../presentation/mall_view.dart';

part 'routes.dart';

class MallPages {
  MallPages._();

  static final routes = [
    GetPage(
      name: _MallPaths.MALL,
      page: () => const MallView(),
      binding: MallBinding(),
    ),
  ];
}
