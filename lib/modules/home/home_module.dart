import 'package:ester/app/modules/module.dart';
import 'package:ester/modules/home/home_bindings.dart';
import 'package:ester/modules/home/home_page.dart';
import 'package:get/get.dart';

class HomeModule extends Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/splash',
      page: () => const HomePage(),
      binding: HomeBindings(),
    ),
  ];
}
