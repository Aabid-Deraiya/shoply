import 'package:flutter/material.dart'
  show
    Brightness,
    BuildContext,
    ColorScheme,
    MediaQuery,
    TextTheme,
    Theme,
    ThemeData;
import 'package:shoply/style/custom_theme.dart';

extension BuildContextEx on BuildContext{
  ThemeData get theme => CustomTheme().light;

  ColorScheme get colorScheme => CustomTheme().light.colorScheme;

  TextTheme get textTheme => CustomTheme().light.textTheme;

  double get width => MediaQuery.sizeOf(this).width;

  double get widthPixel => MediaQuery.sizeOf(this).width * MediaQuery.of(this).devicePixelRatio;

  double get height => MediaQuery.sizeOf(this).height;

  double get heightPixel => MediaQuery.sizeOf(this).height * MediaQuery.of(this).devicePixelRatio;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}