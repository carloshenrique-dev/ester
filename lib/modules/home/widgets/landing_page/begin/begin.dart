import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ester/app/theme/styles/app_images.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension Begin on LandingPageWidget {
  List<Widget> beginPage() {
    return [
      Stack(
        key: controller.homeKey,
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Image.asset(
            AppImages.begin,
            filterQuality: FilterQuality.high,
          ),
          Column(
            children: [
              SizedBox(
                width: Get.width * .2,
                height: Get.height * .2,
                child: Image.asset(
                  AppImages.beginLogo,
                  filterQuality: FilterQuality.high,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(seconds: 2),
                animatedTexts: [
                  TyperAnimatedText('Cada centímetro é parte de um todo',
                      textAlign: TextAlign.center,
                      textStyle: AppTextStyles.homeTitleStrongWhite),
                ],
              ),
            ],
          ),
        ],
      ),
    ];
  }

  List<Widget> beginMobilePage() {
    return <Widget>[
      Stack(
        key: controller.homeKey,
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Image.asset(
            AppImages.begin,
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill,
            height: 270,
            width: Get.width,
          ),
          Column(
            children: [
              SizedBox(
                width: Get.width * .2,
                //height: Get.height * .17,
                child: Image.asset(
                  AppImages.beginLogo,
                  filterQuality: FilterQuality.high,
                ),
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(seconds: 2),
                animatedTexts: [
                  TyperAnimatedText('Cada centímetro é parte de um todo',
                      textAlign: TextAlign.center,
                      textStyle: AppTextStyles.homeTitleStrongWhite),
                ],
              ),
            ],
          ),
        ],
      ),
    ];
  }
}
