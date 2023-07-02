// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import '../main.dart';
import '../screens/home_screen.dart';

class Routes {
  static const String flashScreen = 'flashScreen';
  static const String loginScreen = 'loginScreen';
  static const String getStartedScreen = 'getStartedScreen';
  static const String homeScreen = 'homeScreen';
  static const String userTypeScreen = 'userTypeScreen';
  static const String userDetailScreen = 'userDetailScreen';

  static Route<dynamic> generateRoutesWithParams(RouteSettings settings) {
    return MaterialPageRoute(
      builder: ((context) => HomeScreen(title: settings.arguments as String)),
    );
  }

  static Map<String, Widget Function(BuildContext)>
      generateRoutesWithoutParams() {
    return {};
  }
}
