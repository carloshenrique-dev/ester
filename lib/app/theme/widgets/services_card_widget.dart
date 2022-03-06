import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import '../styles/app_colors.dart';

class ServicesCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;
  const ServicesCardWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border(
          left: BorderSide(
            width: 1.5,
            color: AppColors.orange,
          ),
        ),
        color: AppColors.strongGray,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Icon(
                icon,
                color: AppColors.orange,
                size: 40,
              ),
            ),
            SizedBox(
              height: Get.height * .02,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    title,
                    style: AppTextStyles.servicesCardTitle,
                  ),
                  Text(
                    subTitle,
                    style: AppTextStyles.servicesCardSubtitle,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
