import 'dart:developer';
import 'package:ester/app/theme/ui/messages_mixin.dart';
import 'package:ester/core/models/form_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController with MessagesMixin {
  FormModel formModel = FormModel();
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  late final GlobalKey aboutMeKey;
  late final GlobalKey servicesKey;
  late final GlobalKey contactKey;
  late final GlobalKey constructionKey;
  late final GlobalKey homeKey;
  late final ScrollController scrollController;
  final _currentIndex = 0.obs;
  final message = Rxn<MessageModel>();

  @override
  void onInit() async {
    super.onInit();
    messageListener(message);
    aboutMeKey = GlobalKey();
    constructionKey = GlobalKey();
    servicesKey = GlobalKey();
    contactKey = GlobalKey();
    homeKey = GlobalKey();
    scrollController = ScrollController();
  }

  String? isValidName(String? value) =>
      value?.isEmpty ?? true ? 'Por favor, informe seu nome' : null;

  String? isValidEmail(String? value) =>
      value?.isEmpty ?? true ? 'Por favor, informe seu e-mail' : null;

  String? isValidPhone(String? value) =>
      value?.isEmpty ?? true ? 'Por favor, informe seu telefone' : null;

  String? isValidSubject(String? value) =>
      value?.isEmpty ?? true ? 'Por favor, informe o assunto' : null;

  void validateTextField(
      {String? name, String? phone, String? email, String? subject}) {
    formModel = formModel.copyWith(
      name: name,
      phone: phone,
      email: email,
      subject: subject,
    );
    log(formModel.toString());
  }

  callEmail() async {
    final form = formKey.currentState;
    if (form!.validate()) {
      String sendEmail =
          'mailto:contato@engenhariaec.com?subject=Contato de: ${nameController.text}&body=${subjectController.text}';
      try {
        bool launched = await launch(sendEmail);
        if (!launched) {
          await launch(sendEmail);
        }
      } catch (e) {
        await launch(sendEmail);
      }
      message(MessageModel.error(
          message: 'Por favor preencha corretamente suas informacoes'.tr));
    }
  }

  void scrollToWidgetByKey(GlobalKey key) {
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double y = position.dy;
    scrollController.animateTo(y,
        duration: const Duration(milliseconds: 700), curve: Curves.easeInOut);
  }

  changeImage(int index) {
    _currentIndex.value = index;
  }
}
