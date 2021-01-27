import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/animation/fadeanimation.dart';
import 'package:todo_app/screens/splash_screen.dart';
import 'package:todo_app/theme.dart';

import 'theme_service.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Themes.light,
        darkTheme: Themes.dark,
        themeMode: ThemeService().theme,
        home: FadeAnimation(1.2, SplashScreen()));
  }
}
