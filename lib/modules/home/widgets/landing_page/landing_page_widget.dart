import 'package:ester/modules/home/widgets/landing_page/our_services/our_services.dart';
import 'package:flutter/material.dart';
import 'about_me/about_me.dart';
import 'begin/begin.dart';

class LandingPageWidget extends StatelessWidget {
  const LandingPageWidget({Key? key}) : super(key: key);

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
          ],
        );
      } else {
        return Column(
          children: [
            ...beginMobilePage(),
            ...ourServicesMobilePage(constraints.biggest.width),
            ...aboutMeMobilePage(constraints.biggest.width),
          ],
        );
      }
    });
  }
}
