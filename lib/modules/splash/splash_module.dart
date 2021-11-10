import 'package:ester/app/modules/module.dart';
import 'package:get/get.dart';
import 'splash_bindings.dart';
import 'splash_page.dart';

class SplashModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/splash',
      page: () => const SplashPage(),
      binding: SplashBindings(),
    ),
  ];
}
