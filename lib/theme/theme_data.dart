import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  BuildContext context;
  TextTheme textTheme;
  ThemeData _primaryTheme;
  CustomTheme(BuildContext context) {
    this.context = context;
    textTheme = Theme.of(context).textTheme;
    _primaryTheme = ThemeData(
        primaryColor: Colors.black,
        textTheme: GoogleFonts.adventProTextTheme(textTheme).copyWith(
          body1: TextStyle(color: Colors.white),
          title: TextStyle(color: Colors.white),
          body2: TextStyle(color: Colors.white),
        ));
  }

  ThemeData get primaryTheme => _primaryTheme;
}
