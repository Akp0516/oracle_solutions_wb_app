import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

double screenWidth = 980;
double screenHeight = 980;

bool isWeb(BuildContext context) {
  screenWidth = MediaQuery.sizeOf(context).width;
  screenHeight = MediaQuery.sizeOf(context).height;
  return kIsWeb && MediaQuery.sizeOf(context).width > 980;
}

TextStyle boldStyle = const TextStyle(
    fontSize: 84,
    fontWeight: FontWeight.w900,
    color: ColorTheme.mainTextColor,
    fontFamily: 'roboto');
TextStyle thickStyle = const TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w700,
    color: ColorTheme.mainSubTextColor,
    fontFamily: 'roboto');
TextStyle headingText = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: ColorTheme.tagTextColor,
    fontFamily: 'roboto');
TextStyle normalText = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: ColorTheme.tagTextColor,
    fontFamily: 'roboto');

class ColorTheme {
  static const Color tagTextColor = Color.fromRGBO(43, 45, 48, 1.0);
  static const Color navBarColor = Color.fromRGBO(165, 60, 204, 1.0);
  static const Color bgColor = Color.fromRGBO(204, 228, 250, 1.0);
  static const Color mainTextColor = Color.fromRGBO(253, 123, 25, 1.0);
  static const Color mainSubTextColor = Color.fromRGBO(111, 120, 195, 1.0);
}
