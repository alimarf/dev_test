import '../modules/account/routes/pages.dart';
import '../modules/discover/routes/pages.dart';
import '../modules/home/routes/pages.dart';
import '../modules/inbox/routes/pages.dart';
import '../modules/mall/routes/pages.dart';
import '../modules/main/routes/pages.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = MainRoutes.SPLASH;

  static final routes = [
    ...MainPages.routes,
    ...HomePages.routes,
    ...MallPages.routes,
    ...DiscoverPages.routes,
    ...InboxPages.routes,
    ...AccountPages.routes,
  ];
}
