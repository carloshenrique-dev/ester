import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class LandingPageWidget extends StatelessWidget {
  const LandingPageWidget({Key? key}) : super(key: key);

  List<Widget> pageChildren({required double width, required ThemeData theme}) {
    return <Widget>[
      SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ester Catuaba',
              style: theme.brightness == Brightness.dark
                  ? AppTextStyles.homeTitleWhite
                  : AppTextStyles.homeTitleDark,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Consideramos cada projeto entregue a nós como um desafio, que nos ajuda a atingir uma alta taxa de sucesso a cada projeto finalizado.',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: AppColors.redButton,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: Text(
                  'Nossos Projetos',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        child: Image.asset('assets/images/home_image.png'),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 800) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:
              pageChildren(width: constraints.biggest.width / 2, theme: theme),
        );
      } else {
        return Column(
          children:
              pageChildren(width: constraints.biggest.width, theme: theme),
        );
      }
    });
  }
}
