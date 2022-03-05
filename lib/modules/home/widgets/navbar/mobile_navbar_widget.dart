import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../app/theme/styles/app_colors.dart';
import '../../../../app/theme/styles/app_images.dart';

class MobileNavbarWidget extends StatelessWidget {
  const MobileNavbarWidget({Key? key}) : super(key: key);

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
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              clipBehavior: Clip.antiAlias,
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
                  'Obras',
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
                const SizedBox(
                  height: 20,
                  width: 15,
                  child: VerticalDivider(
                    color: AppColors.body,
                    width: 1,
                  ),
                ),
                Text(
                  'Serviços',
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
                  'Contato',
                  style: AppTextStyles.cardTextDarkBold,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
