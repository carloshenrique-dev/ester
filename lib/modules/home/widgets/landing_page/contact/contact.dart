import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../app/theme/styles/app_text_styles.dart';

extension Contact on LandingPageWidget {
  List<Widget> contactPage(double width) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: SizedBox(
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Contato',
                style: AppTextStyles.contactBlueTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height * .01,
              ),
              Text(
                'Precisa de alguma informação ou tem alguma dúvida? Entre em contato!',
                style: AppTextStyles.homeTitleStrongDark,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              Text(
                '- Construções, reformas e ampliações',
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
              Text(
                "- Laudos técnicos e Art's.",
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
              Text(
                '- Gerenciamento, planejamento e execução de obra.',
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
              Text(
                '- Projetos Arquitetônicos 2D e 3D.',
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> contactMobilePage(double width) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              Text(
                '- Construções, reformas e ampliações',
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
              Text(
                "- Laudos técnicos e Art's.",
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
              Text(
                '- Gerenciamento, planejamento e execução de obra.',
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
              Text(
                '- Projetos Arquitetônicos 2D e 3D.',
                style: AppTextStyles.lotesTitleDark,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
