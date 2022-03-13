import 'package:flutter/material.dart';

import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const TextFieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: AppColors.blue,
      style: AppTextStyles.textFieldData,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: AppTextStyles.textField,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.blue,
            width: 2,
          ),
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.body,
            width: 2,
          ),
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.body, width: 2),
        ),
      ),
    );
  }
}
