import 'package:flutter/material.dart';
import 'package:ester/modules/home/home_controller.dart';
import 'package:ester/modules/home/widgets/navbar/desktop_navbar_widget.dart';
import 'package:ester/modules/home/widgets/navbar/mobile_navbar_widget.dart';

class Navbar extends StatelessWidget {
  final HomeController controller;
  const Navbar({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopNavbarWidget(
          controller: controller,
        );
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return DesktopNavbarWidget(
          controller: controller,
        );
      } else {
        return MobileNavbarWidget(
          controller: controller,
        );
      }
    });
  }
}
