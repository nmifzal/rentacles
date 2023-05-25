import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentacles/modules/home/home.binding.dart';
import 'package:rentacles/modules/home/home.page.dart';
import 'package:rentacles/routes/app.pages.dart';
import 'package:rentacles/themes/colors.theme.dart';

void main() {
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
      theme: ThemeColor().themeData,
      initialBinding: HomeBinding(),
      home: const HomePage(),
      getPages: AppPages.pages,
    );
  }
}
