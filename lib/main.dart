import 'package:flutter/material.dart';
import 'package:to_do_app/home_layout/home_layout.dart';
import 'package:to_do_app/pages/splash_screen/splash_screen.dart';
import 'package:to_do_app/shard_component/theme/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.light,
      initialRoute: SplashScreen.routeName,
      routes: {
        HomeLayout.routeName: (context) => HomeLayout(),
        SplashScreen.routeName: (context) => SplashScreen(),
      },
    );
  }
}
