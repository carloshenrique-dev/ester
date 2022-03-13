import 'package:flutter/material.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';

class TextWithTapWidget extends StatelessWidget {
  final Function()? onTap;
  final String title;
  const TextWithTapWidget({
    Key? key,
    required this.onTap,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: AppTextStyles.cardTextDarkBold,
      ),
    );
  }
}
