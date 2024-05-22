import 'package:flutter/material.dart';

import '../styles/styles.dart';

class RecentSearch extends StatelessWidget {
  RecentSearch(this.title, {Key? key}) : super(key: key);

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Styles.color.primaryColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.history,
            size: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Styles.textStyle.normalTS.copyWith(color: Styles.color.textColorLight),
              ),
            ],
          )
        ],
      ),
    );
  }
}
