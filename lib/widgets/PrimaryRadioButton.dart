import 'package:boiler_plate_app/styles/styles.dart';
import 'package:flutter/material.dart';

class PrimaryRadioButton extends StatelessWidget {
  //final String text;
  final Function() onSelected;
  double? width; // add this
  final double paddingTop;
  final double borderRadius;
  final double height;
  final double fontSize;
  final double iconGap;
  final double iconSize;
  final String text;
  final bool selected;
  final bool showOr;
  final TextStyle? textStyle;
  final EdgeInsets padding;
  final Widget? selectedIcon;
  final Widget? unSelectedIcon;
  final IconData? selectedIconData;
  final IconData? unSelectedIconData;

  PrimaryRadioButton(this.text,
      {required this.onSelected,
      this.selected = false,
      this.width,
      this.textStyle,
      this.selectedIcon,
      this.unSelectedIcon,
      this.selectedIconData,
      this.unSelectedIconData,
      this.height = 35,
      this.borderRadius = 10,
      this.iconGap = 10,
      this.fontSize = 14,
      this.iconSize = 20,
      this.showOr = false,
      this.padding =
          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 7.0),
      this.paddingTop = 0});

  @override
  Widget build(BuildContext context) {
    width = width;
    return Padding(
        padding: EdgeInsets.only(top: this.paddingTop),
        child: InkWell(
          onTap: selected
              ? null
              : () {
                  onSelected();
                },
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                border: Border.all(
                    color: selected
                        ? Styles.color.primaryColor
                        : Colors.transparent,
                    width: selected ? 1 : 0),
                borderRadius: getRadius(0)),
            child: Stack(
              children: [
                Row(
                  children: [
                    selected
                        ? selectedIcon ??
                            Icon(
                              selectedIconData ?? Icons.radio_button_on,
                              color: Styles.color.primaryColor,
                              size: iconSize,
                            )
                        : unSelectedIcon ??
                            Icon(
                              unSelectedIconData ?? Icons.radio_button_off,
                              size: iconSize,
                            ),
                    SizedBox(
                      width: iconGap,
                    ),
                    Center(
                      child: Text(
                          /*(items[index] is MasterOption)
                                ? items[index].label
                                :*/
                          text,
                          textAlign: TextAlign.center,
                          style: textStyle ?? Styles.textStyle.normalTS),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  getRadius(int index) {
    return BorderRadius.horizontal(
        left: index == 0 ? Radius.circular(borderRadius) : Radius.zero,
        right: Radius.circular(borderRadius));
  }
}
