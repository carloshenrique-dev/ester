import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';
import 'widgets/navbar/navbar_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SizedBox(
          width: Get.width,
          height: Get.height,
          child: SingleChildScrollView(
            controller: controller.scrollController,
            child: Column(
              children: [
                Navbar(
                  controller: controller,
                ),
                LandingPageWidget(
                  controller: controller,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
