import 'package:flutter/material.dart';

import '../styles/styles.dart';

class BasicChip extends StatelessWidget {
  BasicChip(this.title, {this.padding = const EdgeInsets.all(4),this.onClick,this.selected=false, Key? key})
      : super(key: key);

  String title;
  EdgeInsets padding;
  VoidCallback? onClick;
  bool selected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: selected?Styles.color.primaryColor:Styles.color.primaryColor.withOpacity(0.12),
            borderRadius: BorderRadius.circular(10)),
        padding: padding,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Styles.textStyle.normalTS
                      .copyWith(color: selected?Styles.color.white:Styles.color.textColor),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
