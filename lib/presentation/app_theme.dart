import 'package:flutter/material.dart';
import 'package:trading/presentation/app_color.dart';
import 'package:trading/presentation/app_color.dart';
import 'package:trading/presentation/app_color.dart';
import 'package:trading/presentation/app_color.dart';
import 'package:trading/presentation/app_color.dart';
import 'package:trading/presentation/app_font.dart';

import 'app_dimen.dart';
import 'app_style.dart';

class AppTheme{
  ThemeData getApplicationTheme() {
    return ThemeData(
      // main colors of the app
        primaryColor: AppColor.primary,
        primaryColorLight: AppColor.primaryOpacity70,
        primaryColorDark: AppColor.darkPrimary,
        disabledColor: AppColor.grey1, // will be used incase of disabled button for example
        // ripple color
        splashColor: AppColor.primaryOpacity70,
        // accentColor: AppColor.grey,
        colorScheme: ColorScheme.fromSwatch(accentColor:AppColor.grey ,primaryColorDark:AppColor.darkPrimary , ),
        // card view theme
        cardTheme: CardTheme(
            color: AppColor.white,
            shadowColor: AppColor.grey,
            elevation: AppSize.s4),
      // App bar theme
        appBarTheme: AppBarTheme(
            centerTitle: true,
            color: AppColor.primary,
            elevation: AppSize.s4,
            shadowColor: AppColor.primaryOpacity70,
            titleTextStyle: AppTextStyle.getRegularStyle(
                color: AppColor.white, fontSize: AppFontSize.s16))
      // Button theme

      // Text theme

      // input decoration theme (text form field)

    );
  }
}