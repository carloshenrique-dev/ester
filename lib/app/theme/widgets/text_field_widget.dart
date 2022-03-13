import 'package:flutter/material.dart';
import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;

  const TextFieldWidget({
    Key? key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.onChanged,
    required this.validator,
    required this.textInputAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.blue,
      style: AppTextStyles.textFieldData,
      onChanged: onChanged,
      validator: validator,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: AppTextStyles.textField,
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
