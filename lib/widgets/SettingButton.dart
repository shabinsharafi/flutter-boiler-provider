import 'package:boiler_plate_app/styles/styles.dart';
import 'package:flutter/material.dart';

enum ButtonAlignment { start, end }

class SettingsButton extends StatelessWidget {
  final String? text;
  final String imageUrl;
  final IconData? icon;
  final Widget? iconWidget;
  final VoidCallback function;
  final ButtonAlignment alignment;
  final double? width; // add this
  final double paddingTop;
  final bool hideShadow;

  const SettingsButton(this.text, this.function,
      {this.width,
      this.imageUrl = "",
      this.icon,
      this.iconWidget,
      this.paddingTop= 10,
      this.hideShadow= false,
      this.alignment= ButtonAlignment.end}); // change this

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: Styles.dimens.screenPadding, vertical: 0),
        child: InkWell(
          onTap: function,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                icon != null
                    ? Icon(
                        icon,
                        color: Styles.color.textColorLight,
                      )
                    : iconWidget != null
                        ? SizedBox(
                            width: 24,
                            height: 24,
                            child: FittedBox(child: iconWidget!))
                        : Container(
                            width: 24,
                            height: 24,
                            child: FittedBox(
                              child: Image.asset(
                                this.imageUrl,
                                fit: BoxFit.contain,
                              ),
                            )),
                SizedBox(
                  width: 15,
                ),
                text != null
                    ? Text(text!,
                        textAlign: TextAlign.center,
                        style: Styles.textStyle.normalTS)
                    : SizedBox(),
                /*Spacer(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Icon(Icons.chevron_right_sharp),
                ),*/
              ],
            ),
          ),
        ));
    return Container();
  }
}
