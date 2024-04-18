import 'dart:ffi';
import 'dart:math';

import 'package:boiler_plate_app/constants/constants.dart';
import 'package:boiler_plate_app/styles/styles.dart';
import 'package:boiler_plate_app/utils/NavigationService.dart';
import 'package:boiler_plate_app/widgets/ShadowWidget.dart';
import 'package:boiler_plate_app/widgets/nothing_layout.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import '../../provider/userProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late UserProvider userProvider;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userProvider = Provider.of<UserProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}


