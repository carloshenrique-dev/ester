import 'package:ester/app/theme/styles/app_images.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AppImages.background,
              width: size.width * 0.2,
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
