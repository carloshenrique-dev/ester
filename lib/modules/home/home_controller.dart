import 'package:ester/app/theme/ui/messages_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController with MessagesMixin {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  final message = Rxn<MessageModel>();

  @override
  void onInit() async {
    super.onInit();
    messageListener(message);
  }

  callEmail() async {
    String sendEmail =
        'mailto:c.tarabal25@gmail.com?subject=Contato: ${nameController.text}&body=${subjectController.text}';
    try {
      bool launched = await launch(sendEmail);
      if (!launched) {
        await launch(sendEmail);
      }
    } catch (e) {
      await launch(sendEmail);
    }
    //message(MessageModel.error(message: 'pleaseFillInformation'.tr));
  }
}
