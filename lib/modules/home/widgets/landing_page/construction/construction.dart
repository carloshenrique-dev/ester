import 'package:carousel_slider/carousel_slider.dart';
import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_images.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';

final List<String> imagesList = [
  'https://r7c5p3w6.rocketcdn.me/wp-content/uploads/2019/12/mercado-da-constru%C3%A7%C3%A3o-civil-em-crescimento-1024x672.png',
];

extension Construction on LandingPageWidget {
  List<Widget> constructionPage(double width) {
    return <Widget>[
      Padding(
        key: controller.constructionKey,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Nossas obras',
                style: AppTextStyles.servicesOrangeTitle,
                textAlign: TextAlign.center,
              ),
              CarouselSlider(
                items: imagesList
                    .map((item) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(item),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  onPageChanged: (index, _) => controller.changeImage(index),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> constructionMobilePage(double width) {
    return <Widget>[
      Padding(
        key: controller.constructionKey,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nossas obras',
                    style: AppTextStyles.homeTitleStrongDark,
                    textAlign: TextAlign.center,
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
                filterQuality: FilterQuality.high,
              ),
            ),
          ],
        ),
      ),
    ];
  }
}
