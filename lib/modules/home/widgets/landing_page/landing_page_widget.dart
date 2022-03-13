import 'package:flutter/material.dart';
import 'package:ester/modules/home/home_controller.dart';
import 'package:ester/modules/home/widgets/landing_page/contact/contact.dart';
import 'package:ester/modules/home/widgets/landing_page/our_services/our_services.dart';
import 'about_me/about_me.dart';
import 'begin/begin.dart';

class LandingPageWidget extends StatelessWidget {
  final HomeController controller;
  const LandingPageWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 930) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...beginPage(),
            ...ourServicesPage(constraints.biggest.width / 2),
            ...aboutMePage(constraints.biggest.width / 2),
            ...contactPage(
                width: constraints.biggest.width / 2, controller: controller)
          ],
        );
      } else {
        return Column(
          children: [
            ...beginMobilePage(),
            ...ourServicesMobilePage(constraints.biggest.width),
            ...aboutMeMobilePage(constraints.biggest.width),
            ...contactMobilePage(
                width: constraints.biggest.width, controller: controller)
          ],
        );
      }
    });
  }
}
