import 'package:boiler_plate_app/styles/styles.dart';
import 'package:flutter/material.dart';


class HeadingUnderline extends StatelessWidget {
  // add this
  const HeadingUnderline(); // change this

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10.0,bottom: 20),
        child:
            Container(height: 1.0, width: 39.0, color: Styles.color.primaryColor));
  }
}
