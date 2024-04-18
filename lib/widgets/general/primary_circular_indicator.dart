import 'package:boiler_plate_app/styles/theme.dart';
import 'package:flutter/material.dart';

class PrimaryCircularIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: Color(primaryOrange),
    );
  }
}
