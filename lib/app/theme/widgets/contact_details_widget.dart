import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/app/theme/widgets/background_widget.dart';
import 'card_info_widget.dart';

class ContactDetailsWidget extends StatelessWidget {
  final double? width;
  const ContactDetailsWidget({
    Key? key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: Get.height * .45,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.blue,
      ),
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
            SizedBox(
              height: Get.height * .05,
            ),
            const CardInfoWidget(
              icon: Icons.phone,
              title: '+55 (11) 97504-9075',
            ),
            SizedBox(
              height: Get.height * .03,
            ),
            const CardInfoWidget(
              icon: Icons.email,
              title: 'contato@engenhariaec.com',
            ),
            SizedBox(
              height: Get.height * .03,
            ),
            const CardInfoWidget(
              icon: FontAwesomeIcons.certificate,
              title: 'CREA: 5070763892',
            ),
          ],
        ),
      ),
    );
  }
}
