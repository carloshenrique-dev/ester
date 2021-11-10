import 'package:ester/modules/home/widgets/landing_page/landing_page_widget.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './home_controller.dart';
import 'widgets/navbar/navbar_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(11, 16, 52, 1.0),
                Color.fromRGBO(11, 16, 52, 1.0)
                /*Color.fromRGBO(11, 16, 52, 1.0),
                Color.fromRGBO(11, 16, 52, 1.0)*/
              ]),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Navbar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: LandingPageWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
