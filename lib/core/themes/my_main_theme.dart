import 'package:alemni/core/themes/my_color_swatch.dart';
import 'package:alemni/core/themes/my_colors.dart';
import 'package:alemni/core/themes/my_decorations.dart';
import 'package:alemni/core/themes/my_fonts.dart';
import 'package:flutter/material.dart';

ThemeData myMainTheme() {
  return ThemeData(
    scaffoldBackgroundColor: MyColors.scaffoldBackgroundColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: MyColors.text,
    ),
    appBarTheme: AppBarTheme(
      toolbarHeight: MyDecoration.defaultAppbarHeight,
      backgroundColor: MyColors.appBar,
      elevation: 0,
      centerTitle: false,
      titleTextStyle: MyFonts.ubuntuRegular14,
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: MyColors.logoPrincipal,
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 1,
      iconColor: MyColors.textInput,
      filled: true,
      fillColor: MyColors.colorBox,
      hintStyle: MyFonts.ubuntuRegular16.copyWith(
        color: MyColors.textInput,
      ),
      errorStyle: MyFonts.ubuntuRegular12.copyWith(
        color: MyColorSwatch.danger,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          MyDecoration.defaultTextFieldBorderRadius,
        ),
        borderSide: const BorderSide(
          width: 1,
          color: MyColors.logoPrincipal,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          MyDecoration.defaultTextFieldBorderRadius,
        ),
        borderSide: BorderSide(
          width: 1,
          color: MyColorSwatch.disable,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          MyDecoration.defaultTextFieldBorderRadius,
        ),
        borderSide: const BorderSide(
          width: 1,
          color: MyColors.red,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: MyColors.logoPrincipal,
        foregroundColor: MyColors.logoPrincipal,
        textStyle: MyFonts.ubuntuRegular16.copyWith(
          color: MyColors.colorTextWhite,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            MyDecoration.defaultBorderRadius,
          ),
        ),
      ),
    ),
  );
}
