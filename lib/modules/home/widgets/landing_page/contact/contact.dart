import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/app/theme/widgets/contact_details_widget.dart';
import 'package:ester/app/theme/widgets/contact_form_widget.dart';
import 'package:ester/modules/home/home_controller.dart';
import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension Contact on LandingPageWidget {
  List<Widget> contactPage(
      {required double width, required HomeController controller}) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: SizedBox(
          width: Get.width,
          child: Column(
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
              Row(
                children: [
                  ContactDetailsWidget(
                    width: Get.width * .4,
                  ),
                  SizedBox(
                    width: Get.width * .01,
                  ),
                  ContactFormWidget(
                    controller: controller,
                    buttonWidth: Get.width * .11,
                    height: Get.height * .535,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ];
  }

  List<Widget> contactMobilePage(
      {required double width, required HomeController controller}) {
    return <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          width: width,
          child: Column(
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
              ContactDetailsWidget(
                width: Get.width,
              ),
              SizedBox(
                height: Get.height * .02,
              ),
              ContactFormWidget(
                controller: controller,
                buttonWidth: Get.width * .3,
                height: Get.height * .45,
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
