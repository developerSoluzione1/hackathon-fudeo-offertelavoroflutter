import 'package:flutter/material.dart';

Color getColorForSelect(String colorLabel) {
  switch (colorLabel) {
    case 'blue':
      return const Color(0xFFBBDEFB);
    case 'red':
      return const Color(0xFFFFCDD2);
    case 'purple':
      return const Color(0xFFE1BEE7);
    case 'yellow':
      return const Color(0xFFFFF9C4);
    case 'green':
      return const Color(0xFFC8E6C9);
    case 'default':
    default:
      return const Color(0xFFF5F5F5);
  }
}

Color getLabelColorForSelect(String colorLabel) {
  switch (colorLabel) {
    case 'blue':
      return const Color(0xFF1A237E);
    case 'red':
      return const Color(0xFFB71C1C);
    case 'purple':
      return const Color(0xFF4A148C);
    case 'yellow':
      return const Color(0xFF424242);
    case 'green':
      return const Color(0xFF1B5E20);
    case 'default':
    default:
      return const Color(0xFFF5F5F5);
  }
}
