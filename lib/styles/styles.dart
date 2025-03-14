
import 'package:flutter/material.dart';
import '../utilities.dart';
import '../utils/NavigationService.dart';

class Styles {
  static _Dimens dimens = _Dimens();
  static _Color color = _Color();
  static _TextStyle textStyle = _TextStyle();

  static const normalScreenPadding = EdgeInsets.all(20);

  static const SizedBox spaceHeight2 = SizedBox(height: 2);
  static const SizedBox spaceHeight5 = SizedBox(height: 5);
  static const SizedBox spaceHeight10 = SizedBox(height: 10);
  static const SizedBox spaceHeight12 = SizedBox(height: 12);
  static const SizedBox spaceHeight15 = SizedBox(height: 15);
  static const SizedBox spaceHeight20 = SizedBox(height: 20);
  static const SizedBox spaceHeight30 = SizedBox(height: 30);
  static const SizedBox spaceHeight50 = SizedBox(height: 50);
  static const SizedBox spaceHeight70 = SizedBox(height: 70);
  static const SizedBox spaceHeight100 = SizedBox(height: 100);
  static const SizedBox spaceHeight150 = SizedBox(height: 150);

  static const SizedBox spaceWidth2 = SizedBox(width: 2);
  static const SizedBox spaceWidth5 = SizedBox(width: 5);
  static const SizedBox spaceWidth10 = SizedBox(width: 10);
  static const SizedBox spaceWidth15 = SizedBox(width: 15);
  static const SizedBox spaceWidth20 = SizedBox(width: 20);
  static const SizedBox spaceWidth50 = SizedBox(width: 50);

  static InputDecoration inputForm(
      {Color backgroundColor = Colors.white,
        final double radius = 10,
        String? hintText,
        final EdgeInsets? contentPadding}) =>
      InputDecoration(
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: backgroundColor,
        hintText: hintText,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(radius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(radius),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(radius),
        ),
        contentPadding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
          borderRadius: BorderRadius.circular(radius),
        ),
      );

  static InputDecoration inputFormD(
      {Color backgroundColor = Colors.white,
        final double radius = 5,
        String? hintText,
        final EdgeInsets? contentPadding}) =>
      InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ));

 /* static dropDownDecoration(String hint, {double radius = 5}) =>
      DropDownDecoratorProps(
        dropdownSearchDecoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
                borderRadius: BorderRadius.circular(radius))),
      );
*/
  //decorations
  static getTextFieldDecoration({String hint = ""}) {
    return InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: hint,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.grey, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
              style: BorderStyle.solid),
        ),
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
        fillColor: const Color.fromARGB(30, 255, 255, 255),
        filled: true);
  }

  static getButtonDecoration(
      {double radius = 15, double width = 2, Color color = Colors.white70}) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(width: width, color: color));
  }

  static getButtonDecoration2(
      {double radius = 15, double width = 2, Color color = Colors.white}) {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(width: width, color: color),
        color: color);
  }

  static getNoImageDecoration() {
    return const DecorationImage(
        image: AssetImage("assets/logo.png"), fit: BoxFit.fill);
  }

  static List<BoxShadow>? buttonShadow(
      {double blurRadius = 10, double offset = 2, double opacity = 0.28}) {
    return <BoxShadow>[
      BoxShadow(
        color: Color(0xFF4E5978).withOpacity(opacity - 0.11),
        blurRadius: blurRadius,
        offset: Offset(-offset, -offset),
      ),
      BoxShadow(
        color: Color(0xFF121A30).withOpacity(opacity),
        blurRadius: ((blurRadius + 1) * 2 / 3) + 1,
        offset: Offset((offset - 1) * 2, (offset - 1) * 2),
      ),
    ];
  }

  //textStyles
  static const fontFamilyRegular = "Nunito";
}

class _Dimens {
  get width =>
      MediaQuery.sizeOf(NavigationService.navigatorKey.currentContext!).width;

  relativeWidth({double size = 1, double padding = 0}) =>
      (width - (padding * (size - 1))) / size;

  get height =>
      MediaQuery.sizeOf(NavigationService.navigatorKey.currentContext!).width;
  final double buttonHeight = 50;
  final double screenPaddingBig = 25;
  final double screenPadding = 20;
  final double screenPaddingNormal = 20;
  final double screenPaddingSmall = 15;

  final borderRadiusNormal = 10.0;
  final lineHeightNormal = 1.5;
  final lineHeightHeadings = 1.2;
  final fontSizeExtraSmall = 10.0;
  final fontSizeSmall = 12.0;
  final fontSizeOptions = 14.0;
  final fontSizeNormal = 16.0;
  final fontSizeAlertHeading = 18.0;
  final fontSizeTitle = 20.0;
  final fontSizeHeading = 24.0;
  final fontSizeLarge = 30.0;
  final fontSizeExtraLarge = 40.0;
  final bannerRatio = 20 / 9;
  final itemImageRatio = 3 / 4;
  final itemDetailImageRatio = 4 / 5;
}

class _Color {
  // final primaryColor = Utilities.getMaterialColor(Color(0xFF4285f4));
  // final primaryColor = Utilities.getMaterialColor(Color(0xFF01579B));
  // final primaryColor = Utilities.getMaterialColor(Color(0xFF234674));
  // final primaryColor = Utilities.getMaterialColor(Color(0xFF91e405));
  // final primaryColor = Utilities.getMaterialColor(Color(0xFF91e405));
  // final primaryColor = Utilities.getMaterialColor(Color(0xFF28854c));
  final primaryColor = Utilities.getMaterialColor(Color(0xFF35b261));

  // final primaryColor = Utilities.getMaterialColor(Color(0xFF0277BD));
  // final secondaryColor = Utilities.getMaterialColor(Color(0xFFD3663B));
  final secondaryColor = Utilities.getMaterialColor(Color(0xFF28854c));
  final accentColor = Color.fromARGB(255, 241, 212, 80);
  final blueColor = Color.fromARGB(255, 35, 70, 116);
  final skyBlueColor = Color.fromARGB(255, 71, 194, 202);
  final redColor = Color.fromARGB(255, 230, 96, 101);
  final textColor = Color(0xFF363636);
  final textColorLight = Color(0xFF595959);
  final textColorTooLight = Color(0xFF797979);
  final textColorHint = Color(0xFF676767);
  final dividerColor = Color(0xFF484848).withOpacity(0.4);
  final textFieldColor = Color(0xFFF5F5F5);
  final textFieldBorderColor = Color(0xFFDEDEDE);
  final fadedWhite = Color(0xFF9C9FA8);
  final white = Color(0xFFFFFFFF);
  final primaryOrange = Color(0xFFE1953B);
  final fontColorOrange2 = Color(0xFFF1925C);
  final fontColorOrange = Color(0xFFD3663B);
  final fontColorBlack = Color(0xFF141A2D);
  final fadedWhiteBorder = Color(0xFF343D54);
  final promptBlue = Color(0xFF394669);
  final graphGrey = Color(0xFF909DC1);
  final iconBlueTint = Color(0xFF455275);
  final notificationRed = Color(0xFFFF000F);
  final backgroundGrey = Color(0xFF262D40);
  final backgroundGreyV2 = Color(0xFF1A2135);
  final backgroundGreyV3 = Color(0xFF2C3650);
  final backgroundBlack = Color(0xFF1A2135);
  final black = Color(0xFF000000);
  final profileCardBg = Color(0xFFFFFFFF);
  final boxBorder = Color(0xFF30394A);
  final backGroundColor = Color.fromARGB(255, 255, 255, 255);
}

class _TextStyle {
  final tooBigHeadingTS = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w500,
      color: Styles.color.textColor,
      fontFamily: Styles.fontFamilyRegular);
  final bigHeadingTS = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final headingTS = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final subHeadingTS = TextStyle(
    fontSize: 18,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final regularTS = TextStyle(
    fontSize: 16,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final normalTS = TextStyle(
    fontSize: 14,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final smallTS = TextStyle(
    fontSize: 12,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
  final tooSmallTS = TextStyle(
    fontSize: 10,
    color: Styles.color.textColor,
    //fontFamily: Styles.fontFamilyRegular
  );
}

extension TextStyleExtension on TextStyle {
  TextStyle extraBold() {
    return copyWith(fontWeight: FontWeight.w800);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.bold);
  }

  TextStyle get semiBold {
    return copyWith(fontWeight: FontWeight.w600);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500);
  }

  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300);
  }

  TextStyle get thin {
    return copyWith(fontWeight: FontWeight.w100);
  }
}
