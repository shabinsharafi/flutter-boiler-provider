import 'package:flutter/material.dart';

import '../styles/styles.dart';

class ActionItems extends StatelessWidget {
  ActionItems(this.title, this.description,
      {this.color = Colors.transparent, this.onTap,Key? key})
      : super(key: key);

  String title;
  String description;
  VoidCallback? onTap;
  Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow:
                  Styles.buttonShadow(offset: 1, opacity: 0.2, blurRadius: 2)),
          child: Container(
            color: color,
            padding: EdgeInsets.all(Styles.dimens.screenPaddingSmall),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Styles.textStyle.headingTS.bold
                      .copyWith(color: Styles.color.primaryColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  description.replaceFirst(" ", "\n"),
                  maxLines: 2,
                  style: Styles.textStyle.regularTS.semiBold,
                ),
              ],
            ),
          )),
    );
  }
}
