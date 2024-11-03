import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static Color bluePrimary = const Color(0xFF2764BF);
  static Color background = const Color(0xFF0D0D0E);
  static const Color grey = Color(0xFF668A99);
  static Color success = const Color(0xFF71C265);
  static Color warning = const Color(0xFFF3A755);
  static Color error = const Color(0xFFFF4040);

  static const Color nearlyWhite = Color(0xFFF5F5F5);
  static const Color white = Color(0xFFFFFFFF);
  static const Color nearlyBlack = Color(0xFF0D0D0E);
  static const Color black = Color(0xFF252525);

  static const String fontName = 'Poppins';

  static TextStyle title = GoogleFonts.epilogue(
    textStyle: const TextStyle(fontWeight: FontWeight.w900, fontSize: 28, fontStyle: FontStyle.normal, color: nearlyWhite, letterSpacing: 0.56),
  );

  static TextStyle titleContainer = GoogleFonts.epilogue(
    textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16, fontStyle: FontStyle.normal, color: black),
  );

  static TextStyle containText = GoogleFonts.epilogue(
    textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16, fontStyle: FontStyle.normal, color: nearlyWhite),
  );

  static TextStyle textLink = GoogleFonts.epilogue(
    textStyle:
        TextStyle(fontWeight: FontWeight.w400, fontSize: 16, fontStyle: FontStyle.normal, color: bluePrimary, decoration: TextDecoration.underline),
  );

  static TextStyle inputText = GoogleFonts.epilogue(
    textStyle: const TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 14,
      fontStyle: FontStyle.normal,
      color: nearlyWhite,
    ),
  );
}
