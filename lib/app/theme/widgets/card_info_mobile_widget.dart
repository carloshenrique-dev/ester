import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardInfoMobileWidget extends StatelessWidget {
  final String title;
  const CardInfoMobileWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.contactWhite,
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
      textAlign: TextAlign.left,
    );
  }
}
