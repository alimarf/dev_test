import 'package:get/get.dart';

import '../presentation/account_binding.dart';
import '../presentation/account_view.dart';

part 'routes.dart';

class AccountPages {
  AccountPages._();

  static final routes = [
    GetPage(
      name: _AccountPaths.ACCOUNT,
      page: () => const AccountView(),
      binding: AccountBinding(),
    ),
  ];
}
