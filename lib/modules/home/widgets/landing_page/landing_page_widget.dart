import 'package:flutter/material.dart';
import 'about_me/about_me.dart';
import 'begin/begin.dart';

class LandingPageWidget extends StatelessWidget {
  const LandingPageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 930) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...beginPage(width: constraints.biggest.width / 2, theme: theme),
            ...aboutMePage(width: constraints.biggest.width / 2, theme: theme),
          ],
        );
      } else {
        return Column(
          children: [
            ...beginMobilePage(width: constraints.biggest.width, theme: theme),
            ...aboutMeMobilePage(
                width: constraints.biggest.width, theme: theme),
          ],
        );
      }
    });
  }
}
