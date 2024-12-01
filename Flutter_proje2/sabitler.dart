import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sabitler {
  static const MaterialColor AnaRenk = Colors.indigo;
  static const String baslikText = "Ortalama Hesaplama";

  static final TextStyle baslik = GoogleFonts.quicksand(
      fontSize: 24, fontWeight: FontWeight.w900, color: AnaRenk);

  static BorderRadius borderradius = BorderRadius.circular(24);

  static final TextStyle dersSayisi = GoogleFonts.quicksand(
      fontSize: 18, fontWeight: FontWeight.w600, color: AnaRenk);
  static final TextStyle Ortalama = GoogleFonts.quicksand(
      fontSize: 55, fontWeight: FontWeight.w800, color: AnaRenk);
}
