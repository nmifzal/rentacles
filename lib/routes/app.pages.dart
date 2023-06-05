import 'package:get/get.dart';
import 'package:rentacles/modules/home/home.binding.dart';
import 'package:rentacles/modules/home/home.page.dart';
import 'package:rentacles/routes/app.routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
