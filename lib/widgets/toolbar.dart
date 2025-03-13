import 'package:boiler_plate_app/styles/styles.dart';
import 'package:flutter/material.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget {
  ToolBar(this.title,
      {this.action,
      this.onBackPressed,
      this.color,
      this.isLight = true,
      this.isCenter = false,
      Key? key})
      : super(key: key);
  String title;
  Color? color;
  List<Widget>? action;
  bool isLight;
  bool isCenter;
  VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color ?? Styles.color.primaryColor,
      child: SafeArea(
        bottom: false,
        top: true,
        child: Theme(
          data: Theme.of(context).copyWith(useMaterial3: true),
          child: AppBar(
            centerTitle: isCenter,
            title: Text(title,
                style: Styles.textStyle.regularTS.bold.copyWith(
                    color: isLight ? Colors.white : Styles.color.textColor)),
            leading: Padding(
              padding: EdgeInsets.only(left: Styles.dimens.screenPadding),
              child: InkWell(
                onTap: () {
                  if (onBackPressed != null) {
                    onBackPressed!();
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 22,
                  color: isLight ? Colors.white : Colors.black87,
                ),
              ),
            ),
            leadingWidth: 40,
            actions: action,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(60, 60);
}
