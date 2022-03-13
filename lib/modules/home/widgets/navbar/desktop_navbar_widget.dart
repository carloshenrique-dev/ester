import 'package:ester/app/theme/widgets/text_with_tap_widget.dart';
import 'package:flutter/material.dart';
import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_images.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/modules/home/home_controller.dart';

class DesktopNavbarWidget extends StatelessWidget {
  final HomeController controller;
  const DesktopNavbarWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              AppImages.logoAppBar,
              height: 85,
              filterQuality: FilterQuality.high,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextWithTapWidget(
                  title: 'Início',
                  onTap: () =>
                      controller.scrollToWidgetByKey(controller.homeKey),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                  child: VerticalDivider(
                    color: AppColors.body,
                    width: 1,
                  ),
                ),
                TextWithTapWidget(
                  title: 'Obras',
                  onTap: () =>
                      controller.scrollToWidgetByKey(controller.constructionKey),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                  child: VerticalDivider(
                    color: AppColors.body,
                    width: 1,
                  ),
                ),
                TextWithTapWidget(
                  title: 'Serviços',
                  onTap: () =>
                      controller.scrollToWidgetByKey(controller.servicesKey),
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                  child: VerticalDivider(
                    color: AppColors.body,
                    width: 1,
                  ),
                ),
                TextWithTapWidget(
                  title: 'Sobre nós',
                  onTap: () =>
                      controller.scrollToWidgetByKey(controller.aboutMeKey),
                ),
              ],
            ),
            MaterialButton(
              elevation: 0,
              height: 60,
              onPressed: () =>
                  controller.scrollToWidgetByKey(controller.contactKey),
              color: AppColors.grayColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Text(
                'Contato',
                style: AppTextStyles.cardTextLightBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
