import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/app/theme/widgets/text_field_widget.dart';
import 'package:ester/modules/home/home_controller.dart';

class ContactFormWidget extends StatelessWidget {
  final HomeController controller;
  final double buttonWidth;
  final double height;
  const ContactFormWidget({
    Key? key,
    required this.controller,
    required this.buttonWidth,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      height: height,
      decoration: BoxDecoration(
        color: AppColors.lightWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nome',
            style: AppTextStyles.textField,
          ),
          TextFieldWidget(
            hintText: 'Ex: Ester',
            controller: controller.nameController,
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Text(
            'E-mail',
            style: AppTextStyles.textField,
          ),
          TextFieldWidget(
            hintText: 'Ex: contato@engenhariaec.com',
            controller: controller.emailController,
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Text(
            'Telefone',
            style: AppTextStyles.textField,
          ),
          TextFieldWidget(
            hintText: 'Ex: (11) 99999-9999',
            controller: controller.phoneController,
          ),
          SizedBox(
            height: Get.height * .01,
          ),
          Text(
            'Assunto: ',
            style: AppTextStyles.textField,
          ),
          TextFieldWidget(
            hintText: 'Ex: Desejo a contração de serviços...',
            controller: controller.subjectController,
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: buttonWidth,
              height: Get.height * .05,
              child: TextButton.icon(
                onPressed: () async => await controller.callEmail(),
                icon: const Icon(
                  Icons.send,
                  color: AppColors.orange,
                ),
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.blue,
                ),
                label: Text(
                  'Enviar',
                  style: AppTextStyles.buttonStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
