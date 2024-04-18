import 'dart:math';

import 'package:boiler_plate_app/styles/theme.dart';
import 'package:boiler_plate_app/widgets/OptionButtonShimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CommonOptionsShimmer extends StatelessWidget {
  CommonOptionsShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Shimmer.fromColors(
        baseColor: Color(fadedWhite).withOpacity(0.6),
        highlightColor: Color(fadedWhite).withOpacity(0.9),
        child: SizedBox(
            width: width,
            child: Wrap(
              spacing: 15,
              //alignment: WrapAlignment.spaceBetween,
              children: List.filled(10, [])
                  .map(
                    (option) => OptionButtonShimmer(
                      width: (width / 3) - Random().nextInt(70),
                    ),
                  )
                  .toList(),
            )));
  }
}
