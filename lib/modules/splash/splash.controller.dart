import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rentacles/widget_tree.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    startAnimation();
  }

  RxDouble animate = 0.0.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = 55;
    await Future.delayed(const Duration(milliseconds: 1000));
    animate.value = -55;
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = 55;
    await Future.delayed(const Duration(milliseconds: 500));
    Get.off(() => const WidgetTree(),
        duration: const Duration(seconds: 1),
        curve: Curves.easeIn,
        transition: Transition.leftToRightWithFade //transition effect
        );
  }
}
