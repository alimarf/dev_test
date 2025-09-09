import 'package:get/get.dart';

import '../presentation/inbox_binding.dart';
import '../presentation/inbox_view.dart';

part 'routes.dart';

class InboxPages {
  InboxPages._();

  static final routes = [
    GetPage(
      name: _InboxPaths.INBOX,
      page: () => const InboxView(),
      binding: InboxBinding(),
    ),
  ];
}
