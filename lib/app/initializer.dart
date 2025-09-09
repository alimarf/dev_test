import 'modules/main/initializer.dart';

class AppInitializer {
  AppInitializer();

  Future<void> run() async {
    await MainInitializer().run();
  }
}
