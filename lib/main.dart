import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/bindings/application_bindings.dart';
import 'app/theme/styles/app_colors.dart';
import 'modules/home/home_module.dart';

void main() {
  runApp(const EsterWebSite());
}

class EsterWebSite extends StatelessWidget {
  const EsterWebSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ester Catuaba',
      initialBinding: ApplicationBindings(),
      theme: ThemeData(
        iconTheme: const IconThemeData(
          color: AppColors.whiteColor,
        ),
        brightness: Brightness.light,
        primaryColor: AppColors.whiteColor,
        unselectedWidgetColor: AppColors.whiteColor,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColors.blue,
          selectionColor: AppColors.blue,
        ),
        focusColor: AppColors.blue,
      ),
      themeMode: ThemeMode.light,
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      getPages: [
        ...HomeModule().routers,
      ],
    );
  }
}
