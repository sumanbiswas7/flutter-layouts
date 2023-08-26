import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static darkTheme() {
    return ThemeData(
      useMaterial3: false,
      primarySwatch: Colors.grey,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // colorScheme: ColorScheme.dark(),
    );
  }

  static Color _hexToColor(String hexColor) {
    // Remove the # symbol if present
    hexColor = hexColor.replaceAll("#", "");

    // Calculate the red, green, and blue components
    int red = int.parse(hexColor.substring(0, 2), radix: 16);
    int green = int.parse(hexColor.substring(2, 4), radix: 16);
    int blue = int.parse(hexColor.substring(4, 6), radix: 16);

    // Create the color using the alpha channel and RGB components
    Color color = Color.fromRGBO(red, green, blue, 1.0);

    return color;
  }

  static final Map<AppColors, Color> colors = {
    AppColors.primary: _hexToColor("#0C0F14"),
    AppColors.navbar: _hexToColor("#1C181A"),
    AppColors.accent: _hexToColor("#D17842"),
    AppColors.card: _hexToColor("#141921"),
    AppColors.textPrimary: _hexToColor("#C9CACC"),
    AppColors.textSecondary: _hexToColor("#4E5053 "),
  };
}

enum AppColors {
  primary,
  navbar,
  accent,
  card,
  textPrimary,
  textSecondary,
}
