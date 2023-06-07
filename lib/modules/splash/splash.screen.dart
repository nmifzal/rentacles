import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentacles/constants/image_strings.dart';
import 'package:rentacles/modules/splash/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          (Obx(() => AnimatedPositioned(
                left: controller.animate.value,
                curve: Curves.linear,
                duration: const Duration(milliseconds: 1000),
                child: const Image(
                  image: AssetImage(splash3),
                  height: 350,
                ),
              ))),
          const Positioned(
            child: Align(
              child: Image(
                image: AssetImage(splash2),
              ),
            ),
          ),
          const Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(splash1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
