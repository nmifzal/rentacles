import 'package:flutter/material.dart';
import 'package:rentacles/modules/auth/auth.controller.dart';
import 'package:rentacles/modules/home/home.page.dart';
import 'package:rentacles/modules/login/login.screen.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthController().authStageChanges,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const HomePage();
        }
        return const LoginScreen();
      },
    );
  }
}
