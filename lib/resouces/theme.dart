import 'package:flutter/material.dart';

class Theme {
  static final basic = ThemeData(
    // This is the theme of your application.
    primarySwatch: Colors.blue,
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}