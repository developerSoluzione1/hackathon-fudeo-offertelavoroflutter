import 'package:flutter/material.dart';
import 'package:soluzione1_hackathon_fudeo_flutter/utils/colors.dart';

class BrandStyles {
  //https://medium.com/nerd-for-tech/flutter-defining-constants-the-right-way-321d33185b41
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `BrandColors()` accidentally
  BrandStyles._();

  static BoxDecoration containerBoxDecoration = BoxDecoration(
    color: BrandColors.whiteColor,
    boxShadow: [
      BoxShadow(
        color: BrandColors.primaryDarkColor.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
      ),
    ],
    borderRadius: const BorderRadius.all(
      Radius.circular(8),
    ),
  );
}
