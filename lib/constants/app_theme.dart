/// Creating custom color palettes is part of creating a custom app. The idea is to create
/// your class of custom colors, in this case `CompanyColors` and then create a `ThemeData`
/// object with those colors you just defined.
///
/// Resource:
/// A good resource would be this website: http://mcg.mbitson.com/
/// You simply need to put in the colour you wish to use, and it will generate all shades
/// for you. Your primary colour will be the `500` value.
///
/// Colour Creation:
/// In order to create the custom colours you need to create a `Map<int, Color>` object
/// which will have all the shade values. `const Color(0xFF...)` will be how you create
/// the colours. The six character hex code is what follows. If you wanted the colour
/// #114488 or #D39090 as primary colours in your setting, then you would have
/// `const Color(0x114488)` and `const Color(0xD39090)`, respectively.
///
/// Usage:
/// In order to use this newly created setting or even the colours in it, you would just
/// `import` this file in your project, anywhere you needed it.
/// `import 'path/to/setting.dart';`
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      // Matches manifest.json colors and background color.
      primaryColor: const Color(0xFF030303),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        elevation: 0,
        iconTheme: IconThemeData(color: colorScheme.primary),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.subtitle1!.apply(color: _darkFillColor),
      ),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF0F5E99),
    primaryContainer: Color(0xFFEAF2FF),
    secondary: Color(0xFFEFF3F3),
    secondaryContainer: Color(0xFFFAFBFB),
    background: Color(0xFFF5F5F5),
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  // Fontsize Text
  static const double heading1FontSize = 20.0;
  static const double heading2FontSize = 18.0;
  static const double subHeading1FontSize = 16.0;
  static const double subHeading2FontSize = 15.0;
  static const double bodyText1FontSize = 14.0;
  static const double bodyText2FontSize = 12.0;
  static const double bodyText3FontSize = 10.0;

  // Fontsize Icon
  static const double smallIconSize = 18.0;
  static const double mediumIconSize = 24.0;
  static const double largeIconSize = 32.0;

  // Font weights
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;

  static final TextTheme _textTheme = TextTheme(
    headline4: GoogleFonts.manrope(fontWeight: FontWeight.w700, fontSize: 20.0),
    caption: GoogleFonts.manrope(fontWeight: FontWeight.w600, fontSize: 16.0),
    headline5: GoogleFonts.manrope(fontWeight: FontWeight.w500, fontSize: 16.0),
    subtitle1: GoogleFonts.manrope(fontWeight: FontWeight.w500, fontSize: 16.0),
    overline: GoogleFonts.manrope(fontWeight: FontWeight.w600, fontSize: 12.0),
    bodyText1: GoogleFonts.manrope(fontWeight: FontWeight.w400, fontSize: 14.0),
    subtitle2: GoogleFonts.manrope(fontWeight: FontWeight.w500, fontSize: 14.0),
    bodyText2: GoogleFonts.manrope(fontWeight: FontWeight.w400, fontSize: 16.0),
    headline6: GoogleFonts.manrope(fontWeight: FontWeight.w700, fontSize: 16.0),
    button: GoogleFonts.manrope(fontWeight: FontWeight.w600, fontSize: 14.0),
  );
}
