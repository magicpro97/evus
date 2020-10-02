import 'package:flutter/material.dart';

import 'color.dart';

class Theme {
  static final basic = ThemeData(
    // This is the theme of your application.
    primarySwatch: Colors.pink,
    // This makes the visual density adapt to the platform that you run
    // the app on. For desktop platforms, the controls will be smaller and
    // closer together (more dense) than on mobile platforms.
    visualDensity: VisualDensity.adaptivePlatformDensity,
    //backgroundColor: Colorz.GRAY_244,
    scaffoldBackgroundColor: Colorz.GRAY_244,
  );
}