import 'package:flutter/material.dart';

class AppResources {
  static const EdgeInsets screenPadding = EdgeInsets.fromLTRB(16, 24, 16, 24);
}

class AppColors {
  static const Color primaryColor = Color(0xFF1DA1F2);
  static const Color secondaryColor = Color(0xFF323238);
  static const Color white = Color(0xFfffffff);
  static const Color lightgray = Color(0xFF949C9E);
  static const Color lightBlue = Color(0xFFEDF8FF);
  static const Color red = Color(0xFFF34642);
}

class AppTextStyles {
  static const TextStyle mediumRoboto14 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500);

  static TextStyle mediumRoboto16 =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle mediumRoboto18 =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  static TextStyle regularRoboto12 =
      const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  static TextStyle regularRoboto14 =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle regularRoboto16 =
      const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
}
