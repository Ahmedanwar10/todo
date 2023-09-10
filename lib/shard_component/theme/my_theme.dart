import 'package:flutter/material.dart';
import 'package:to_do_app/shard_component/theme/colors.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: LightGreenColor,
    appBarTheme: AppBarTheme(
      color: PrimaryColor,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedIconTheme: IconThemeData(
        color: PrimaryColor,
        size: 36,
      ),
      selectedItemColor: PrimaryColor,
      unselectedIconTheme: IconThemeData(
        color: LightSittingColor,
        size: 33,
      ),
      // unselectedLabelStyle:
    ),
    textTheme: TextTheme(
      headlineMedium: TextStyle(color: Colors.white, fontSize: 30),
      bodyMedium: TextStyle(color: Colors.white, fontSize: 25),
      bodySmall: TextStyle(color: Colors.white, fontSize: 20),
    ),
  );
}
