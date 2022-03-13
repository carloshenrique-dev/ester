import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardInfoWidget extends StatelessWidget {
  final IconData icon;
  final String title;

  const CardInfoWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon),
        SizedBox(
          width: Get.width * .01,
        ),
        Text(
          title,
          style: AppTextStyles.contactWhite,
        ),
      ],
    );
  }
}
