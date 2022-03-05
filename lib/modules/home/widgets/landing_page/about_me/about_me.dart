import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import '../../../../../app/theme/styles/app_colors.dart';
import '../../../../../app/theme/styles/app_images.dart';
import '../../../../../app/theme/styles/app_text_styles.dart';

extension AboutMe on LandingPageWidget {
  List<Widget> aboutMePage({required double width, required ThemeData theme}) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Por que ',
                      children: [
                        TextSpan(
                          text: 'EC engenharia?',
                          style: AppTextStyles.homeTitleStrongDark,
                        ),
                      ],
                    ),
                    style: AppTextStyles.homeTitleDark,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text.rich(
                      const TextSpan(
                        text:
                            'EC engenharia e projetos é a abreviação do meu nome e sobrenome ESTER CATUABA. A parte que mais importa é o sobrenome Catuaba que é por parte de pai.',
                        children: [
                          TextSpan(
                            text:
                                '\nMeu pai tem uma historia de vida fantástica',
                            style: TextStyle(
                              backgroundColor: AppColors.lightOrange,
                            ),
                          ),
                          TextSpan(text: ' e eu me orgulho demais! '),
                          TextSpan(
                            text: 'Ele é a minha inspiração',
                            style: TextStyle(
                              backgroundColor: AppColors.lightOrange,
                            ),
                          ),
                          TextSpan(
                              text:
                                  ', e minhas tias também são exemplos de superação '),
                        ],
                      ),
                      style: AppTextStyles.lotesTitleDark,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Image.asset(
                AppImages.geometria,
                height: 275,
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> aboutMeMobilePage(
      {required double width, required ThemeData theme}) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Por que ',
                      children: [
                        TextSpan(
                          text: 'EC engenharia?',
                          style: AppTextStyles.homeTitleStrongDark,
                        ),
                      ],
                    ),
                    style: AppTextStyles.homeTitleDark,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text.rich(
                      const TextSpan(
                        text:
                            'EC engenharia e projetos é a abreviação do meu nome e sobrenome ESTER CATUABA. A parte que mais importa é o sobrenome Catuaba que é por parte de pai.',
                        children: [
                          TextSpan(
                            text:
                                '\nMeu pai tem uma historia de vida fantástica',
                            style: TextStyle(
                              backgroundColor: AppColors.lightOrange,
                            ),
                          ),
                          TextSpan(text: ' e eu me orgulho demais! '),
                          TextSpan(
                            text: 'Ele é a minha inspiração',
                            style: TextStyle(
                              backgroundColor: AppColors.lightOrange,
                            ),
                          ),
                          TextSpan(
                              text:
                                  ', e minhas tias também são exemplos de superação '),
                        ],
                      ),
                      style: AppTextStyles.lotesTitleDark,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
              ),
              child: Image.asset(
                AppImages.geometria,
                height: 275,
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
