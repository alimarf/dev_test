// ignore_for_file: constant_identifier_names

part of 'pages.dart';

abstract class MainRoutes {
  MainRoutes._();
  static const SPLASH = _MainPaths.SPLASH;
  static const MAIN = _MainPaths.MAIN;
  static const DASHBOARD = _MainPaths.DASHBOARD;
  static const SYNC = _MainPaths.SYNC;
  static const RESULTS = _MainPaths.RESULTS;
  static const SETTINGS = _MainPaths.SETTINGS;
}

abstract class _MainPaths {
  _MainPaths._();
  static const SPLASH = '/splash';
  static const MAIN = '/main';
  static const DASHBOARD = '/dashboard';
  static const SYNC = '/sync';
  static const RESULTS = '/results';
  static const SETTINGS = '/settings';
}
