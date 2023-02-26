import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:this_time/src/constants/colors.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
          headline1: GoogleFonts.montserrat(fontSize: 28.0,fontWeight: FontWeight.bold, color: tDarkColor),
          headline2: GoogleFonts.montserrat(
            fontSize: 24.0, fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
          headline3: GoogleFonts.poppins(fontSize: 24.0,fontWeight: FontWeight.w700,color: tDarkColor),
          headline4: GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w600,color: tDarkColor),
          bodyText1: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.normal,color: tDarkColor),
          bodyText2 : GoogleFonts.poppins(
            color: Colors.black54,
            fontSize: 24,
            fontWeight: FontWeight.normal,
          )

  );

  static TextTheme darkTextTheme = TextTheme(

      headline1: GoogleFonts.montserrat(fontSize: 28.0,fontWeight: FontWeight.bold, color: tWhiteColor),
      headline2: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700,
        color: Colors.white60,
      ),
      headline3: GoogleFonts.poppins(fontSize: 24.0,fontWeight: FontWeight.w700,color: tWhiteColor),
      headline4: GoogleFonts.poppins(fontSize: 16.0,fontWeight: FontWeight.w600,color: tWhiteColor),
      bodyText1: GoogleFonts.poppins(fontSize: 14.0,fontWeight: FontWeight.normal,color: tWhiteColor),
      bodyText2 : GoogleFonts.poppins(
        color: Colors.white10,
        fontSize: 24,
        fontWeight: FontWeight.normal,
      )
  );

}