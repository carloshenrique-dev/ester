import 'package:ester/app/theme/widgets/text_with_tap_widget.dart';
import 'package:flutter/material.dart';
import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_images.dart';
import 'package:ester/modules/home/home_controller.dart';

class MobileNavbarWidget extends StatelessWidget {
  final HomeController controller;
  const MobileNavbarWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: SizedBox(
        child: Column(
          children: [
            Image.asset(
              AppImages.logoAppBar,
              height: 85,
              filterQuality: FilterQuality.high,
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              clipBehavior: Clip.antiAlias,
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
                  onTap: () => controller
                      .scrollToWidgetByKey(controller.constructionKey),
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
                  title: 'Contato',
                  onTap: () =>
                      controller.scrollToWidgetByKey(controller.contactKey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
