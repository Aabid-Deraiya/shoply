import 'package:flutter/material.dart';
import 'package:shoply/utils/app_colors.dart';
import 'package:shoply/utils/app_size.dart';

abstract class ThemePreferences {
  ThemeData get dark;
  ThemeData get light;
}

class CustomTheme extends ThemePreferences {
  @override
  ThemeData get dark => ThemeData();

  @override
  ThemeData get light => ThemeData(
        fontFamily: 'Inter',
        scaffoldBackgroundColor: AppColors.white,
        dialogBackgroundColor: AppColors.white,
        dialogTheme: const DialogTheme(
          backgroundColor: AppColors.white,
          titleTextStyle: TextStyle(color: AppColors.black),
          contentTextStyle: TextStyle(color: AppColors.black),
        ),
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                    color: AppColors.black, fontSize: AppSize.sp12);
              }
              return TextStyle(
                color: AppColors.white,
                fontSize: AppSize.sp12,
                fontWeight: FontWeight.bold,
              );
            },
          ),
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primaryColor,
          onPrimary: AppColors.black,
          secondary: AppColors.white,
          onSecondary: AppColors.black,
          error: AppColors.errorColor,
          onError: AppColors.primaryColor,
          surface: Color.fromRGBO(255, 240, 240, 1),
          onSurface: AppColors.black,
          surfaceContainerHighest: AppColors.white,
        ),
        primaryColor: AppColors.primaryColor,
        primaryColorDark: AppColors.primaryColor,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.black),
          backgroundColor: AppColors.white,
        ),
        scrollbarTheme: ScrollbarThemeData(
          interactive: true,
          radius: Radius.circular(AppSize.r10),
          minThumbLength: 100,
        ),
        highlightColor: AppColors.transparent,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, AppSize.h60),
            backgroundColor: AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSize.r14),
            ),
            textStyle: const TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
        ),
        splashColor: AppColors.transparent,
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp34,
            fontWeight: FontWeight.w600,
          ),
          headlineMedium: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp30,
            fontWeight: FontWeight.w600,
          ),
          bodyLarge: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp26,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp24,
            fontWeight: FontWeight.w600,
          ),
          bodySmall: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp20,
            fontWeight: FontWeight.w500,
          ),
          titleLarge: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp18,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp14,
            fontWeight: FontWeight.w500,
          ),
          titleSmall: TextStyle(
            color: AppColors.black,
            fontSize: AppSize.sp12,
            fontWeight: FontWeight.w500,
          ),
        ),
        disabledColor: AppColors.grey800,
      );
}
