import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static final servicesCardSubtitle = GoogleFonts.mulish(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.whiteColor,
  );
  static final servicesCardTitle = GoogleFonts.mulish(
    fontSize: 16,
    fontWeight: FontWeight.w800,
    color: AppColors.whiteColor,
  );
  static final TextStyle homeTitleStrongDark = GoogleFonts.mulish(
    color: AppColors.grayColor,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle homeTitleStrongWhite = GoogleFonts.mulish(
    color: AppColors.whiteColor,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle servicesOrangeTitle = GoogleFonts.mulish(
    color: AppColors.orange,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle contactBlueTitle = GoogleFonts.mulish(
    color: AppColors.blue,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle lotesTitleDark = GoogleFonts.mulish(
    color: AppColors.grayColor,
    fontSize: 22,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle homeTitleDark = GoogleFonts.mulish(
    color: AppColors.grayColor,
    fontSize: 25,
    fontWeight: FontWeight.w600,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle cardTextDarkBold = GoogleFonts.mulish(
    color: AppColors.grayColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );
  static final TextStyle cardTextLightBold = GoogleFonts.mulish(
    color: AppColors.whiteColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
  );
}
