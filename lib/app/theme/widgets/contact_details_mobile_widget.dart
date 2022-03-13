import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'card_info_mobile_widget.dart';

class ContactDetailsMobileWidget extends StatelessWidget {
  const ContactDetailsMobileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: Get.height * .3,
      width: Get.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.blue,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Informações de contato',
            style: AppTextStyles.homeTitleStrongWhite,
            textAlign: TextAlign.left,
          ),
          Text(
            'Preencha o formulario e em ate 24 hrs e estaremos retornando seu contato! :)',
            style: AppTextStyles.subtitleWhite,
            textAlign: TextAlign.left,
          ),
          const CardInfoMobileWidget(
            title: '+55 (11) 97504-9075',
          ),
          const CardInfoMobileWidget(
            title: 'contato@engenhariaec.com',
          ),
          const CardInfoMobileWidget(
            title: 'CREA: 5070763892',
          )
        ],
      ),
    );
  }
}
