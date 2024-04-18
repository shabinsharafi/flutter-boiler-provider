import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageAsset extends StatelessWidget {
  ImageAsset(this.icon, {this.width, this.height,this.color, Key? key}) : super(key: key);

  String icon;
  double? width;
  double? height;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return icon.endsWith("svg")
        ? SvgPicture.asset(icon, width: width, height: height,color: color)
        : Image.asset(icon, width: width, height: height,color: color);
  }
}
