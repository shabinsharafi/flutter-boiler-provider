
import 'package:boiler_plate_app/styles/styles.dart';
import 'package:boiler_plate_app/styles/theme.dart';
import 'package:flutter/material.dart';


class PrimaryButtonOutlined extends StatelessWidget {
  final String text;
  final VoidCallback function;
  final double? width; // add this
  final double height; // add this
  final double paddingTop;
  final EdgeInsets padding;
  final Color? color;

  const PrimaryButtonOutlined(this.text, this.function,
      {this.width,
        this.height = 51,
        this.paddingTop = 10,
        this.color,
        this.padding =
        const EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0)}); // change this

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: paddingTop),
        child: Container(
          height: height,
          width: width,
          // width: width ?? MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  color ?? Styles.color.primaryColor,
                  color ?? Styles.color.primaryColor,
                ],
              )),
          child: Container(
            margin: EdgeInsets.all(1.5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Material(
              elevation: 0,
              color: Colors.transparent,
              child: MaterialButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                height: height,
                padding: padding,
                onPressed: function,
                child: Text(text,
                    textAlign: TextAlign.center,
                    style:
                    TextStyle(fontSize: 14, fontFamily: fontFamilyRegular)
                        .copyWith(
                        color: color??Styles.color.primaryColor,
                        fontWeight: FontWeight.normal)),
              ),
            ),
          ),
        ));
  }
}
