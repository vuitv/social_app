import 'package:flutter/material.dart';

class Themes {
  Themes._();

  static const Color dodgerBlue = Color.fromRGBO(89, 109, 255, 1);
  static const Color lightGrayishBlue = Color.fromRGBO(117, 140, 183, 1);
  static const Color whiteLilac = Color.fromRGBO(250, 250, 250, 1);
  static const Color blackPearl = Color.fromRGBO(30, 31, 43, 1);
  static const Color brinkPink = Color.fromRGBO(255, 97, 136, 1);
  static const Color juneBud = Color.fromRGBO(186, 215, 97, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color lightGray = Color.fromRGBO(214, 214, 214, 1);
  static const Color ebonyClay = Color.fromRGBO(51, 70, 106, 1);
  static const Color grayishBlue = Color.fromRGBO(32, 49, 82, 1);

  static String font1 = "ProductSans";
  static String font2 = "Roboto";

  //constants color range for light theme
  //main color
  static const Color _lightPrimaryColor = dodgerBlue;

  //Background Colors
  static const Color _lightBackgroundColor = whiteLilac;
  static const Color _lightBackgroundAppBarColor = Colors.transparent;
  static const Color _lightBackgroundSecondaryColor = white;
  static const Color _lightBackgroundAlertColor = blackPearl;
  static const Color _lightBackgroundActionTextColor = white;
  static const Color _lightBackgroundErrorColor = brinkPink;
  static const Color _lightBackgroundSuccessColor = juneBud;
  static const Color _lightBackgroundCardColor = Color.fromRGBO(255, 255, 255, 1);
  static const Color _lightBackgroundBannerColor = Color.fromRGBO(250, 96, 125, 1);
  static const Color _lightBackgroundBottomNavigationBarColor = Color.fromRGBO(255, 255, 255, 0.95);

  //Text Colors
  static const Color _lightTextColor = grayishBlue;
  static const Color _lightTextSecondaryColor = lightGrayishBlue;
  static const Color _lightTextCaptionColor = Color.fromRGBO(32, 49, 82, 0.2);
  static const Color _lightAlertTextColor = Colors.black;

  //Button Colors
  static const Color _lightButtonColor = _lightPrimaryColor;
  static const Color _lightButtonSecondaryColor = Color.fromRGBO(51, 100, 183, 1);

  //Border Color
  static const Color _lightBorderColor = lightGray;

  //Icon Color
  static const Color _lightIconColor = grayishBlue;
  static const Color _lightUnSelectedIconColor = lightGrayishBlue;

  //form input colors
  static const Color _lightInputFillColor = _lightBackgroundSecondaryColor;
  static const Color _lightBorderActiveColor = _lightPrimaryColor;
  static const Color _lightBorderErrorColor = brinkPink;

  //constants color range for dark theme
  static const Color _darkPrimaryColor = dodgerBlue;

  //Background Colors
  static const Color _darkBackgroundColor = ebonyClay;
  static const Color _darkBackgroundAppBarColor = Colors.transparent;
  static const Color _darkBackgroundSecondaryColor = Color.fromRGBO(0, 0, 0, .6);
  static const Color _darkBackgroundAlertColor = blackPearl;
  static const Color _darkBackgroundActionTextColor = white;
  static const Color _darkBackgroundCardColor = Color.fromRGBO(32, 49, 82, 0.9);
  static const Color _darkBackgroundBannerColor = Color.fromRGBO(250, 96, 125, 1);
  static const Color _darkBackgroundBottomNavigationBarColor = Color.fromRGBO(20, 34, 60, 1);

  static const Color _darkBackgroundErrorColor = Color.fromRGBO(255, 97, 136, 1);
  static const Color _darkBackgroundSuccessColor = Color.fromRGBO(186, 215, 97, 1);

  //Text Colors
  static const Color _darkTextColor = Colors.white;
  static const Color _darkTextSecondaryColor = Color.fromRGBO(185, 192, 217, 1);
  static const Color _darkTextCaptionColor = Color.fromRGBO(255, 255, 255, 0.2);
  static const Color _darkAlertTextColor = Colors.black;

  //Button Colors
  static const Color _darkButtonColor = _darkPrimaryColor;
  static const Color _darkButtonSecondaryColor = Color.fromRGBO(51, 100, 183, 1);

  //Border Color
  static const Color _darkBorderColor = Color.fromRGBO(51, 70, 106, 1);

  //Icon Color
  static const Color _darkIconColor = Colors.white;
  static const Color _darkUnSelectedIconColor = lightGrayishBlue;

  static const Color _darkInputFillColor = _darkBackgroundSecondaryColor;
  static const Color _darkBorderActiveColor = _darkPrimaryColor;
  static const Color _darkBorderErrorColor = brinkPink;

  //text theme for light theme
  static final TextTheme _lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, color: _lightTextColor, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 16.0, color: _lightTextColor, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 15.0, color: _lightTextColor),

    // Default
    bodyMedium: TextStyle(fontSize: 14.0, color: _lightTextColor),

    titleMedium: TextStyle(fontSize: 16.0, color: _lightTextSecondaryColor),
    titleSmall: TextStyle(fontSize: 14.0, color: _lightTextSecondaryColor),
    bodySmall: TextStyle(fontSize: 12.0, color: _lightTextCaptionColor),
    labelLarge: TextStyle(fontSize: 15.0, color: _lightTextColor, fontWeight: FontWeight.w600),
  );

  //the light theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: dodgerBlue,
    primaryColorLight: dodgerBlue,
    primaryColorDark: grayishBlue,
    brightness: Brightness.light,
    //fontFamily: font1,
    scaffoldBackgroundColor: _lightBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundAppBarColor,
      iconTheme: IconThemeData(color: _lightTextColor),
      titleTextStyle: _lightTextTheme.titleLarge!.copyWith(fontSize: 34),
      centerTitle: false,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightBackgroundBottomNavigationBarColor,
      selectedItemColor: dodgerBlue,
      unselectedItemColor: _lightUnSelectedIconColor,
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimaryColor,
      onPrimary: _lightBackgroundColor,
      // secondary: _lightSecondaryColor,
    ),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: _lightBackgroundBannerColor,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: _lightBackgroundAlertColor,
      actionTextColor: _lightBackgroundActionTextColor,
    ),
    iconTheme: IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme: PopupMenuThemeData(color: _lightBackgroundAppBarColor),
    cardColor: _lightBackgroundCardColor,
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _lightPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        minimumSize: Size(100, 56),
        elevation: 4,
        shadowColor: Color.fromARGB(25, 86, 128, 250),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
    unselectedWidgetColor: _lightPrimaryColor,
    dividerTheme: DividerThemeData(),
    inputDecorationTheme: InputDecorationTheme(
      //prefixStyle: TextStyle(color: _lightIconColor),
      hintStyle: _lightTextTheme.bodySmall?.copyWith(
        fontSize: 20,
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(width: 0.5),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _lightBorderColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
      ),
      fillColor: _lightBackgroundSecondaryColor,
      //focusColor: _lightBorderActiveColor,
    ),
  );

//text theme for dark theme
  /*static final TextStyle _darkScreenHeadingTextStyle =
      _lightScreenHeadingTextStyle.copyWith(color: _darkTextColor);
  static final TextStyle _darkScreenTaskNameTextStyle =
      _lightScreenTaskNameTextStyle.copyWith(color: _darkTextColor);
  static final TextStyle _darkScreenTaskDurationTextStyle =
      _lightScreenTaskDurationTextStyle;
  static final TextStyle _darkScreenButtonTextStyle = TextStyle(
      fontSize: 14.0, color: _darkTextColor, fontWeight: FontWeight.w500);
  static final TextStyle _darkScreenCaptionTextStyle = TextStyle(
      fontSize: 12.0,
      color: _darkBackgroundAppBarColor,
      fontWeight: FontWeight.w100);*/

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 20.0, color: _darkTextColor, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 16.0, color: _darkTextColor, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 15.0, color: _darkTextColor),

    // Default
    bodyMedium: TextStyle(fontSize: 14.0, color: _darkTextColor),

    titleMedium: TextStyle(fontSize: 16.0, color: _darkTextColor),
    titleSmall: TextStyle(fontSize: 14.0, color: _darkTextColor),
    bodySmall: TextStyle(fontSize: 12.0, color: _darkTextCaptionColor),
    labelLarge: TextStyle(fontSize: 15.0, color: _darkTextColor, fontWeight: FontWeight.w600),
  );

  //the dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: dodgerBlue,
    primaryColorLight: dodgerBlue,
    primaryColorDark: grayishBlue,
    brightness: Brightness.dark,
    //primarySwatch: _darkPrimaryColor, //cant be Color on MaterialColor so it can compute different shades.
    hintColor: _darkPrimaryColor,
    //prefix icon color form input on focus

    //fontFamily: font1,
    scaffoldBackgroundColor: _darkBackgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: _darkPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _darkBackgroundAppBarColor,
      iconTheme: IconThemeData(color: _darkTextColor),
      titleTextStyle: _darkTextTheme.titleMedium!.copyWith(fontSize: 34),
      centerTitle: false,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _darkBackgroundBottomNavigationBarColor,
      selectedItemColor: _darkIconColor,
      unselectedItemColor: _darkUnSelectedIconColor,
    ),
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      onPrimary: _darkBackgroundColor,

      // secondary: _darkSecondaryColor,
    ),
    bannerTheme: MaterialBannerThemeData(
      backgroundColor: _darkBackgroundBannerColor,
    ),
    snackBarTheme: SnackBarThemeData(
        contentTextStyle: TextStyle(color: Colors.white),
        backgroundColor: _darkBackgroundAlertColor,
        actionTextColor: _darkBackgroundActionTextColor),
    iconTheme: IconThemeData(
      color: _darkIconColor, //_darkIconColor,
    ),
    popupMenuTheme: PopupMenuThemeData(color: _darkBackgroundAppBarColor),
    cardColor: _darkBackgroundCardColor,
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      buttonColor: _darkPrimaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        minimumSize: Size(100, 56),
        elevation: 4,
        shadowColor: Color.fromARGB(25, 86, 128, 250),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: InputDecorationTheme(
      prefixStyle: TextStyle(color: _darkIconColor),
      //labelStyle: TextStyle(color: nevada),
      hintStyle: _darkTextTheme.bodySmall?.copyWith(
        fontSize: 20,
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(width: 0.5),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _darkBorderColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
      ),
      fillColor: _darkInputFillColor,
      //focusColor: _darkBorderActiveColor,
    ),
  );
}
