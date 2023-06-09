

import 'package:flutter/material.dart';
import 'package:mvvm_project/core/resources/constants/styles_manger.dart';
import 'package:mvvm_project/core/resources/constants/value_manager.dart';

import 'color_manager.dart';
import 'fonts_manager.dart';




ThemeData getApplicationTheme(){

  return ThemeData(

    // main color of the app
    primaryColor:ColorManager.dark,
    primaryColorLight: ColorManager.dark,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    // ripple color
    splashColor: ColorManager.primaryOpacity70,

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.dark,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(color: ColorManager.white,fontSize: FontSize.s16)
    ),

    buttonTheme: ButtonThemeData(
         shape: const StadiumBorder(),
         disabledColor: ColorManager.grey1,
         buttonColor: ColorManager.primary,
         splashColor: ColorManager.primaryOpacity70
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white,), backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.s12))
      )
    ),

    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(color: ColorManager.darkGray,fontSize: FontSize.s16),
      titleMedium: getMediumStyle(color: ColorManager.grey1,fontSize: FontSize.s14),
      titleSmall: getMediumStyle(color: ColorManager.primary,fontSize: FontSize.s14),
      bodySmall: getRegularStyle(color: ColorManager.grey1),
      bodyLarge: getRegularStyle(color: ColorManager.grey),

    ),

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPading.p8),
      hintStyle: getRegularStyle(color: ColorManager.grey),
      // liable style
      labelStyle: getMediumStyle(color: ColorManager.darkGray),
      // error style
      errorStyle: getRegularStyle(color: ColorManager.error),
      // enable border
      enabledBorder: OutlineInputBorder(
        borderSide:BorderSide(
          color: ColorManager.grey,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:BorderSide(
          color: ColorManager.primary,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
      errorBorder: OutlineInputBorder(
        borderSide:BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide:BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8),),
      ),

    ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: ColorManager.grey)
  );
}