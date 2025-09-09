import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../../../../core/base/base_controller.dart';
import '../../../../../core/services/auth_token_manager.dart';

import '../../routes/pages.dart';
import '../../utils/dark_mode_config_enum.dart';

class SplashController extends BaseController {
  final AuthTokenManager authTokenManager;

  final versionName = Rxn<String>();
  final buildNumber = Rxn<String>();

  final darkModeConfig = Rxn<String>();

  SplashController({
    required this.authTokenManager,
  });

  goToMainPage() => _goToMainPage();
  getApplicationVersion() => _getApplicationVersion();

  @override
  Future<void> onReady() async {
    super.onReady();

    await fetchData();

    if (darkModeConfig.value == DarkModeConfigEnum.dark.name) {
      Get.changeThemeMode(ThemeMode.dark);
    } else if (darkModeConfig.value == DarkModeConfigEnum.light.name) {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.system);
    }

    await Future.delayed(const Duration(seconds: 3));

    goToMainPage();
  }

  Future<void> fetchData() async {
    // await getApplicationVersion();
    // await getStoredDarkModeConfig();
  }

  Future<void> _getApplicationVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    versionName.value = packageInfo.version;
    buildNumber.value = packageInfo.buildNumber;
  }

  void _goToMainPage() {
    Get.offAndToNamed(MainRoutes.MAIN);
  }
}
