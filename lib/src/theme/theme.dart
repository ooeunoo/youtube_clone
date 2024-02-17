import 'package:clone_flutter_youtube/src/theme/own_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
    fontFamily: GoogleFonts.notoSans().fontFamily,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: Color(0xff0f0f0f), fontSize: 16, fontWeight: FontWeight.w500),
      titleMedium:
          TextStyle(color: Color(0xff0f0f0f), fontWeight: FontWeight.w500),
      titleSmall:
          TextStyle(color: Color(0xff0f0f0f), fontWeight: FontWeight.w400),
      labelLarge: TextStyle(
          color: Color(0xff606060), fontSize: 12, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          color: Color(0xff606060), fontSize: 10, fontWeight: FontWeight.w500),
      labelSmall: TextStyle(
          color: Color(0xff606060), fontSize: 6, fontWeight: FontWeight.w500),
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.light(
      primaryContainer: Color(0xff0f0f0f),
    )),
    iconTheme: const IconThemeData(color: Colors.black),
    cardTheme: const CardTheme(color: Colors.white),
    dividerTheme: const DividerThemeData(color: Color(0xffEAE8F4)),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xffEAE8F4)),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.white),
        trackColor: MaterialStateProperty.all(const Color(0xff9279C8))),
    scaffoldBackgroundColor: const Color(0xffffffff),
    cardColor: const Color(0xff272727),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Color(0xffffffff)),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffffffff),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Color(0xff0f0f0f), fontSize: 12),
        unselectedLabelStyle: TextStyle(color: Color(0xff0f0f0f), fontSize: 12),
        selectedItemColor: Color(0xff0f0f0f),
        unselectedItemColor: Color(0xff0f0f0f)
        // selectedIconTheme: "",
        // unselectedIconTheme: "",
        // selectedItemColor: "",
        // unselectedItemColor: "",
        // enableFeedback: "",
        // landscapeLayout: "",
        // mouseCursor: "",
        ),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffffffff)))
  ..addOwn(OwnThemeFields(
    scrollbarThumbColor: const Color(0xff0f0f0f).withOpacity(0.7),
    accentTitleMedium: const TextStyle(color: Color(0xffffffff), fontSize: 14),
    accentTitleSmall: const TextStyle(color: Color(0xffffffff), fontSize: 12),
  ));

ThemeData darkMode = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.notoSans().fontFamily,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: Color(0xfff1f1f1), fontSize: 16, fontWeight: FontWeight.w500),
      titleMedium: TextStyle(
          color: Color(0xfff1f1f1), fontSize: 14, fontWeight: FontWeight.w500),
      titleSmall: TextStyle(
          color: Color(0xfff1f1f1), fontSize: 12, fontWeight: FontWeight.w500),
      bodyLarge: TextStyle(),
      bodyMedium: TextStyle(),
      bodySmall: TextStyle(),
      labelLarge: TextStyle(
          color: Color(0xffaaaaaa), fontSize: 12, fontWeight: FontWeight.w500),
      labelMedium: TextStyle(
          color: Color(0xffaaaaaa), fontSize: 10, fontWeight: FontWeight.w500),
      labelSmall: TextStyle(
          color: Color(0xffaaaaaa), fontSize: 6, fontWeight: FontWeight.w500),
    ),
    buttonTheme: const ButtonThemeData(
        colorScheme: ColorScheme.dark(primaryContainer: Color(0xff8ABD93))),
    iconTheme: const IconThemeData(color: Color(0xffffffff)),
    cardTheme: const CardTheme(color: Color(0xff342C38)),
    dividerTheme: const DividerThemeData(color: Color(0xff28222B)),
    drawerTheme: const DrawerThemeData(backgroundColor: Color(0xff28222B)),
    switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.all(Colors.black),
        trackColor: MaterialStateProperty.all(const Color(0xffDEDEDE))),
    scaffoldBackgroundColor: const Color(0xff0f0f0f),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Color(0xff0f0f0f)),
    cardColor: const Color(0xff272727),
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(Colors.red),
      trackColor: MaterialStateProperty.all(Colors.red),
      thickness: MaterialStateProperty.all(8.0),
      radius: const Radius.circular(4.0),
      thumbVisibility: MaterialStateProperty.all(true),
      trackVisibility: MaterialStateProperty.all(true),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff0f0f0f),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(color: Color(0xfff1f1f1), fontSize: 12),
        unselectedLabelStyle: TextStyle(color: Color(0xfff1f1f1), fontSize: 12),
        selectedItemColor: Color(0xfff1f1f1),
        unselectedItemColor: Color(0xfff1f1f1)
        // selectedIconTheme: "",
        // unselectedIconTheme: "",
        // selectedItemColor: "",
        // unselectedItemColor: "",
        // enableFeedback: "",
        // landscapeLayout: "",
        // mouseCursor: "",
        ),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0f0f0f)))
  ..addOwn(
    OwnThemeFields(
      scrollbarThumbColor: const Color(0xfff1f1f1).withOpacity(0.7),
      accentTitleMedium: const TextStyle(
          color: Color(0xff0f0f0f), fontSize: 14, fontWeight: FontWeight.w500),
      accentTitleSmall: const TextStyle(color: Color(0xff0f0f0f), fontSize: 12),
    ),
  );
