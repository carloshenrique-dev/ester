import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ester/app/theme/styles/app_colors.dart';
import 'package:ester/app/theme/styles/app_text_styles.dart';
import 'package:ester/app/theme/widgets/text_field_widget.dart';
import 'package:ester/modules/home/home_controller.dart';

class ContactFormWidget extends StatelessWidget {
  final HomeController controller;
  const ContactFormWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: Get.height * .45,
      decoration: BoxDecoration(
        color: AppColors.lightWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFieldWidget(
                  hintText: 'Ex: Ester',
                  controller: controller.nameController,
                  onChanged: (value) =>
                      controller.validateTextField(name: value),
                  textInputAction: TextInputAction.next,
                  validator: controller.isValidName,
                  label: 'Nome',
                ),
                TextFieldWidget(
                  hintText: 'Ex: contato@engenhariaec.com',
                  controller: controller.emailController,
                  onChanged: (value) =>
                      controller.validateTextField(email: value),
                  textInputAction: TextInputAction.next,
                  validator: controller.isValidEmail,
                  label: 'E-mail',
                ),
                TextFieldWidget(
                  hintText: 'Ex: (11) 99999-9999',
                  controller: controller.phoneController,
                  onChanged: (value) =>
                      controller.validateTextField(phone: value),
                  textInputAction: TextInputAction.next,
                  validator: controller.isValidPhone,
                  label: 'Telefone',
                ),
                TextFieldWidget(
                  hintText: 'Ex: Desejo a contração de serviços...',
                  controller: controller.subjectController,
                  onChanged: (value) =>
                      controller.validateTextField(subject: value),
                  textInputAction: TextInputAction.send,
                  validator: controller.isValidSubject,
                  label: 'Assunto',
                  onFieldSubmitted: (value) async =>
                      await controller.callEmail(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: Get.height * .02,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: Get.width * .11,
              height: Get.height * .07,
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
