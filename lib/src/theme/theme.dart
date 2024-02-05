import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightMode = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.notoSans().fontFamily,
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Color(0xff0f0f0f), fontSize: 16),
      titleMedium: TextStyle(color: Color(0xff0f0f0f), fontSize: 14),
      titleSmall: TextStyle(color: Color(0xff0f0f0f), fontSize: 12),
      labelMedium: TextStyle(color: Color(0xff606060), fontSize: 10),
      labelSmall: TextStyle(color: Color(0xff606060), fontSize: 6),
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
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffffffff)));

ThemeData darkMode = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.notoSans().fontFamily,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Color(0xfff1f1f1),
        fontSize: 16,
      ),
      titleMedium: TextStyle(color: Color(0xfff1f1f1), fontSize: 14),
      titleSmall: TextStyle(color: Color(0xfff1f1f1), fontSize: 12),
      labelMedium: TextStyle(color: Color(0xffaaaaaa), fontSize: 10),
      labelSmall: TextStyle(color: Color(0xffaaaaaa), fontSize: 6),
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
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0f0f0f)));
