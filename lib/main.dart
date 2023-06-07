import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentacles/modules/splash/splash.binding.dart';
import 'package:rentacles/modules/splash/splash.screen.dart';
import 'package:rentacles/modules/home/home.binding.dart';
import 'package:rentacles/routes/app.pages.dart';
import 'package:rentacles/themes/theme.dart';
import 'package:rentacles/widget_tree.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Open Source',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      initialBinding: SplashBinding(),
      home: SplashScreen(),
      getPages: AppPages.pages,
    );
  }
}
