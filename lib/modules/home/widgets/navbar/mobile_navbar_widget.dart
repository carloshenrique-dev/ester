import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class MobileNavbarWidget extends StatelessWidget {
  const MobileNavbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: SizedBox(
        child: Column(
          children: [
            Text(
              'Ester Catuaba',
              style: theme.brightness == Brightness.dark
                  ? AppTextStyles.homeTitleWhite
                  : AppTextStyles.homeTitleDark,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    color: Colors.pink,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
