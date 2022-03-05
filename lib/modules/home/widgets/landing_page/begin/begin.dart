import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../app/theme/styles/app_colors.dart';
import '../../../../../app/theme/styles/app_images.dart';
import '../../../../../app/theme/styles/app_text_styles.dart';

extension Begin on LandingPageWidget {
  List<Widget> beginPage({required double width, required ThemeData theme}) {
    return [
      Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Image.asset(
            AppImages.begin,
          ),
          Column(
            children: [
              SizedBox(
                width: Get.width * .2,
                height: Get.height * .2,
                child: Image.asset(
                  AppImages.beginLogo,
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

  List<Widget> beginMobilePage(
      {required double width, required ThemeData theme}) {
    return <Widget>[
      Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Image.asset(
            AppImages.begin,
          ),
          Column(
            children: [
              SizedBox(
                width: Get.width * .2,
                height: Get.height * .2,
                child: Image.asset(
                  AppImages.beginLogo,
                ),
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
