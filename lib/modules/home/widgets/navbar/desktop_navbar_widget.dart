import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class DesktopNavbarWidget extends StatelessWidget {
  const DesktopNavbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ester Catuaba',
              style: theme.brightness == Brightness.dark
                  ? AppTextStyles.homeTitleWhite
                  : AppTextStyles.homeTitleDark,
            ),
            Row(
              children: [
                Text(
                  'Sobre nos',
                  style: theme.brightness == Brightness.dark
                      ? AppTextStyles.cardTextLightBold
                      : AppTextStyles.cardTextDarkBold,
                ),
                const SizedBox(
                  width: 30,
                ),
                Text(
                  'Portfolio',
                  style: theme.brightness == Brightness.dark
                      ? AppTextStyles.cardTextLightBold
                      : AppTextStyles.cardTextDarkBold,
                ),
                const SizedBox(
                  width: 30,
                ),
                MaterialButton(
                  onPressed: () {},
                  color: AppColors.redButton,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Text(
                    'Contato',
                    style: AppTextStyles.cardTextLightBold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
