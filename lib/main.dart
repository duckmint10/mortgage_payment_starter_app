import 'package:flutter/material.dart';
import 'package:mortgage_payment_starter_app/ui/mortgage_app.dart';
import 'package:mortgage_payment_starter_app/util/colors.dart';

final ThemeData _mortageTheme = _buildMortageTheme();

ThemeData _buildMortageTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
  accentColor: primaryIndigoDark,
    primaryColor: primaryIndigo200,
    scaffoldBackgroundColor: secondaryBackgroundWhite,
    hintColor: textOnPrimaryBlack,
    cardColor: secondaryDeepPurple,
    textTheme: _buildMortageTextTheme(base.textTheme),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: primaryIndigoLight),
        borderRadius: BorderRadius.circular(12)
      )
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      elevation: 7,
      splashColor: primaryIndigoLight,
      backgroundColor: secondaryDeepPurple
    ),
  );
}

_buildMortageTextTheme(TextTheme textTheme) {
  return textTheme.copyWith(
    bodyText2: TextStyle(
      color: textOnPrimaryBlack,
      fontSize: 16
    )
  ).apply(
    fontFamily: "Inconsolata"
  );
}

void main() => runApp(new MaterialApp(
  theme: _buildMortageTheme(),
  home: MortgageApp(),
));