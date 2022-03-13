import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/app/theme/widgets/contact_details_mobile_widget.dart';
import 'package:ester/app/theme/widgets/contact_details_widget.dart';
import 'package:ester/app/theme/widgets/contact_form_mobile_widget.dart';
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
        key: controller.contactKey,
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
                  const ContactDetailsWidget(),
                  SizedBox(
                    width: Get.width * .01,
                  ),
                  Expanded(
                    child: ContactFormWidget(
                      controller: controller,
                    ),
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
        key: controller.contactKey,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SizedBox(
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const ContactDetailsMobileWidget(),
              SizedBox(
                height: Get.height * .02,
              ),
              ContactFormMobileWidget(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    ];
  }
}
