import 'package:flutter/material.dart';
import 'package:trading/presentation/app_font.dart';


class AppTextStyle{
  // general style
  static TextStyle  _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
    return TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamily,
        color: color,
        fontWeight: fontWeight);
  }

// regular style

  static TextStyle getRegularStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, AppFont.fontFamily, AppFontWeight.regular, color);
  }
// light text style

  static TextStyle getLightStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(
        fontSize, AppFont.fontFamily, AppFontWeight.light, color);
  }
// bold text style

  static TextStyle getBoldStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, AppFont.fontFamily, AppFontWeight.bold, color);
  }

// semi bold text style

  static TextStyle getSemiBoldStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, AppFont.fontFamily, AppFontWeight.semiBold, color);
  }

// medium text style

  static TextStyle getMediumStyle({double fontSize = AppFontSize.s12, required Color color}) {
    return _getTextStyle(fontSize, AppFont.fontFamily, AppFontWeight.medium, color);
  }

}
