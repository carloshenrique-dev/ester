import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_images.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class DesktopNavbarWidget extends StatelessWidget {
  const DesktopNavbarWidget({Key? key}) : super(key: key);

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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Início',
                  style: AppTextStyles.cardTextDarkBold,
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                  child: VerticalDivider(
                    color: AppColors.body,
                    width: 1,
                  ),
                ),
                Text(
                  'Portfolio',
                  style: AppTextStyles.cardTextDarkBold,
                ),
                const SizedBox(
                  height: 20,
                  width: 15,
                  child: VerticalDivider(
                    color: AppColors.body,
                    width: 1,
                  ),
                ),
                Text(
                  'Sobre nós',
                  style: AppTextStyles.cardTextDarkBold,
                ),
              ],
            ),
            MaterialButton(
              elevation: 0,
              height: 60,
              onPressed: () {},
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
