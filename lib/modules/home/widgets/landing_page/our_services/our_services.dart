import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../app/theme/styles/app_colors.dart';
import '../../../../../app/theme/styles/app_images.dart';
import '../../../../../app/theme/styles/app_text_styles.dart';
import '../../../../../app/theme/widgets/services_card_widget.dart';

extension OurServices on LandingPageWidget {
  List<Widget> ourServicesPage(double width) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: SizedBox(
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Nossos Serviços',
                style: AppTextStyles.servicesOrangeTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height * .01,
              ),
              Text(
                'Do que você precisa?',
                style: AppTextStyles.homeTitleStrongDark,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: Get.height * 0.01,
                  crossAxisSpacing: Get.height * 0.01,
                  childAspectRatio: 1.3,
                ),
                primary: false,
                shrinkWrap: true,
                children: servicesList.map(
                  (itemList) {
                    return SizedBox(
                      height: Get.height * 9,
                      child: ServicesCardWidget(
                        icon: itemList['icon'],
                        title: itemList['title']!,
                        subTitle: itemList['subtitle']!,
                      ),
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> ourServicesMobilePage(double width) {
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
                  Text(
                    'Do que você precisa?',
                    style: AppTextStyles.homeTitleStrongDark,
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

List<Map<String, dynamic>> servicesList = [
  {
    'icon': Icons.engineering,
    'title': 'Engenharia',
    'subtitle':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non pulvinar neque laoreet suspendisse',
  },
  {
    'icon': Icons.developer_board,
    'title': 'Marcenaria',
    'subtitle':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non pulvinar neque laoreet suspendisse',
  },
  {
    'icon': Icons.functions,
    'title': 'Funilaria',
    'subtitle':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non pulvinar neque laoreet suspendisse',
  },
  {
    'icon': Icons.cookie,
    'title': 'Padaria',
    'subtitle':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non pulvinar neque laoreet suspendisse',
  },
  {
    'icon': Icons.bolt,
    'title': 'Eletrica',
    'subtitle':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non pulvinar neque laoreet suspendisse',
  },
  {
    'icon': Icons.build,
    'title': 'Predial',
    'subtitle':
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non pulvinar neque laoreet suspendisse',
  }
];
