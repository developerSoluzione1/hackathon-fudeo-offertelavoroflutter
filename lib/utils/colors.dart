//https://dart.dev/guides/language/effective-dart/design#avoid-defining-a-class-that-contains-only-static-members
import 'package:flutter/material.dart';

class BrandColors {
  //https://medium.com/nerd-for-tech/flutter-defining-constants-the-right-way-321d33185b41
  // add a private constructor to prevent this class being instantiated
  // e.g. invoke `BrandColors()` accidentally
  BrandColors._();

  static Color backgroundCardColor = Color(int.parse('FFF3F1F7', radix: 16));

  static Color primaryTextColor = Color(int.parse('FF212121', radix: 16));
  static Color primaryLightTextColor = Color(int.parse('FF333333', radix: 16));
  static Color primaryDarkTextColor = Color(int.parse('FF000000', radix: 16));

  static Color primaryColor = Color(int.parse('FF0553B1', radix: 16));
  static Color onPrimaryColor = Color(int.parse('FFFFFFFF', radix: 16));
  static Color primaryLightColor = Color(int.parse('FF027DFD', radix: 16));
  static Color onPrimaryLightColor = Color(int.parse('FFFFFFFF', radix: 16));
  static Color primaryDarkColor = Color(int.parse('FF042B59', radix: 16));
  static Color onPrimaryDarkColor = Color(int.parse('FFFFFFFF', radix: 16));

  static Color redColor = Color(int.parse('FFF25D50', radix: 16));
  static Color yellowColor = Color(int.parse('FFFFF275', radix: 16));
  static Color purpleColor = Color(int.parse('FF6200EE', radix: 16));
  static Color greenColor = Color(int.parse('FF1CDAC5', radix: 16));
}
