import 'package:flutter/material.dart';

PixelyTheme currentTheme = PixelyTheme();

class PixelyTheme with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  static Color gradientColorA = Colors.teal.shade600;
  static Color gradientColorB = Colors.purple;
  static Color iconColor = Colors.teal;
  static Color cardBackgroundColor = Colors.white;

  static Color DarkDeepRoyalBlue = Color(0xFF151529);
  static Color DarkMidRoyalBlue = Color(0xFF191A32);
  static Color gridBackground = Colors.white24;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;

    gridBackground = _isDarkTheme ? Colors.white24 : Colors.transparent;
    gradientColorA = _isDarkTheme ? Colors.purple : Colors.teal.shade600;
    gradientColorB = _isDarkTheme ? Colors.teal.shade600 : Colors.purple;
    iconColor = _isDarkTheme ? Colors.purple : Colors.teal;
    cardBackgroundColor = _isDarkTheme ? Colors.purple.shade200 : Colors.white;

    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: DarkDeepRoyalBlue,
      accentColor: Colors.yellow,
      backgroundColor: DarkDeepRoyalBlue,
      scaffoldBackgroundColor: DarkMidRoyalBlue,
      fontFamily: 'Pacifico',
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
        bodyText2: TextStyle(
          fontSize: 16.0,
          color: Colors.teal.shade100,
          letterSpacing: 5.5,
          fontWeight: FontWeight.bold,
        ),
        headline1: TextStyle(
            fontSize: 35.0, color: Colors.white, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.green,
      accentColor: Colors.yellow,
      backgroundColor: DarkDeepRoyalBlue,
      scaffoldBackgroundColor: DarkMidRoyalBlue,
      fontFamily: 'Pacifico',
      textTheme: TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
          fontSize: 18.0,
        ),
        bodyText2: TextStyle(
          fontSize: 16.0,
          color: Colors.teal.shade100,
          letterSpacing: 5.5,
          fontWeight: FontWeight.bold,
        ),
        headline1: TextStyle(
            fontSize: 35.0, color: Colors.white, fontWeight: FontWeight.bold),
        headline2: TextStyle(
            fontSize: 18.0, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
