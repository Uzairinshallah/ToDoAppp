import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle molengo({TextStyle? style}) =>
      GoogleFonts.molengo(textStyle: style);

  static TextStyle quickSand({TextStyle? style}) =>
      GoogleFonts.quicksand(textStyle: style);

  static TextStyle lex({TextStyle? style}) =>
      GoogleFonts.lexend(textStyle: style);

  static TextStyle nunito({TextStyle? style}) {
    var defaultStyle = const TextStyle(fontSize: 12);
    if (style != null) {
      defaultStyle = style.copyWith(fontSize: 12);
    }
    return GoogleFonts.nunito(textStyle: defaultStyle);
  }
}
