import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryGreen = Color(0xFFff5032);
Color secondaryGreen = Color(0xFFfaa19c);
Color fadedBlack = Colors.black.withAlpha(150);
MaterialColor primaryColor = MaterialColor(
  0xFFFF5E50,
  <int, Color>{
    50: Color(0xFFffedef),
    100: Color(0xFFffd1d4B),
    200: Color(0xFFfaa19c),
    300: Color(0xFFf47c75),
    400: Color(0xFFFF5E50),
    500: Color(0xFFff5032),
    600: Color(0xFFf64834),
    700: Color(0xFFe43d2e),
    800: Color(0xFFd73626),
    900: Color(0xFFc82c19),
  },
);
List<BoxShadow> customShadow = [
  BoxShadow(
    color: Colors.grey[300]!,
    blurRadius: 30,
    offset: Offset(0, 10),
  ),
];
