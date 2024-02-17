import 'dart:ui';

import 'package:flutter/material.dart';

class OwnThemeFields {
  final Color? scrollbarThumbColor;
  final Color? textBaloon;
  final TextStyle? accentTitleMedium;
  final TextStyle? accentTitleSmall;

  OwnThemeFields(
      {this.scrollbarThumbColor,
      this.textBaloon,
      this.accentTitleMedium,
      this.accentTitleSmall});

  factory OwnThemeFields.empty() {
    return OwnThemeFields();
  }
}

extension ThemeDataExtensions on ThemeData {
  static final Map<InputDecorationTheme, OwnThemeFields> _own = {};

  void addOwn(OwnThemeFields own) {
    _own[inputDecorationTheme] = own;
  }

  static OwnThemeFields? empty;

  OwnThemeFields own() {
    var o = _own[inputDecorationTheme];
    if (o == null) {
      empty ??= OwnThemeFields.empty();
      o = empty;
    }
    return o!;
  }
}

OwnThemeFields ownTheme(BuildContext context) => Theme.of(context).own();
