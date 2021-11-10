import 'package:ester/modules/home/widgets/navbar/desktop_navbar_widget.dart';
import 'package:ester/modules/home/widgets/navbar/mobile_navbar_widget.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return const DesktopNavbarWidget();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return const DesktopNavbarWidget();
      } else {
        return const MobileNavbarWidget();
      }
    });
  }
}
