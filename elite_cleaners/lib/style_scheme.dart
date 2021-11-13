import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

LinearGradient gradientStyle = LinearGradient(
  colors: [
    Color(0xFFF3953b),
    Color(0xFFE57509),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

TextStyle headingStyle = GoogleFonts.getFont(
  'Lora',
  fontSize: 20.0,
  fontWeight: FontWeight.w700,
);

TextStyle contentStyle = GoogleFonts.getFont(
  'Lora',
  fontSize: 16.0,
  fontWeight: FontWeight.w700,
);
