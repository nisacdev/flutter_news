import 'package:flutter/material.dart';
import '/src/constants.dart';

final customTheme = ThemeData.light().copyWith(
colorScheme: ColorScheme.fromSwatch().copyWith(secondary:mainColor),
bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  selectedItemColor: secondColor,
)
);
