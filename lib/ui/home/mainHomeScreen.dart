
import 'package:boiler_plate_app/provider/userProvider.dart';
import 'package:boiler_plate_app/styles/styles.dart';
import 'package:boiler_plate_app/ui/common/state_screen.dart';
import 'package:boiler_plate_app/ui/home/homeScreen.dart';
import 'package:boiler_plate_app/utilities.dart';
import 'package:boiler_plate_app/widgets/imageAsset.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainHomeScreen extends ScreenWidget {
  MainHomeScreen({Key? key}) : super(key: key);

  @override
  ScreenState<MainHomeScreen> getState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends ScreenState<MainHomeScreen> {
  var childrens = [
    HomeScreen(),
  ];
  int current = 0;

  @override
  void onBackPressed() {
    if (current != 0) {
      setState(() {
        current = 0;
      });
    } else
      super.onBackPressed();
  }

  @override
  Widget getWidget(BuildContext context) {
    return Consumer<UserProvider>(builder: (context, provider, child) {
      return Scaffold(
        body: Stack(
          children: [
            // DrawerScreen(),
            childrens[current],
            Positioned(
                    bottom: 0,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/images/bot_nav.png",
                          width: Styles.dimens.width,
                        ),
                        Positioned(
                          bottom: 9,
                          child: Container(
                            decoration: BoxDecoration(

                                /*color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 7,
                                      spreadRadius: 1,
                                      offset: Offset(1, 1))
                                ],
                                borderRadius:
                                    BorderRadius.vertical(top: Radius.circular(12))*/
                                ),
                            child: Row(
                              children: [
                                NavItem("Home", Utilities.asset("ic_home.svg"),onClick: (){

                                  setState(() {
                                    current = 0;
                                  });
                                },
                                  widget: Icon(
                                    Icons.home,
                                    /*color: current == 0
                                        ? Styles.color.secondaryColor
                                        : Colors.white,*/
                                  ),),
                                NavItem(
                                  "Items",
                                  Utilities.asset("ic_items.png"),
                                  onClick: () {

                                  },
                                ),
                                Expanded(child: SizedBox()),
                                NavItem(
                                  "Orders",
                                  Utilities.asset("ic_orders.png"),
                                  onClick: () {

                                  },
                                ),
                                NavItem(
                                  "User",
                                  Utilities.asset("ic_user.svg"),
                                  onClick: () {
                                    setState(() {
                                      current = 1;
                                    });
                                  },
                                ),
                              ],
                            ),
                            width: Styles.dimens.width,
                          ),
                        ),
                      ],
                    ))

          ],
        ),
      );
    });
  }
}

class NavItem extends StatelessWidget {
  NavItem(this.title, this.icon,
      {this.onClick, this.widget, this.selected = false, Key? key})
      : super(key: key);

  String title;
  String icon;
  VoidCallback? onClick;
  Widget? widget;
  bool selected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (onClick != null) onClick!();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              widget ??
                  ImageAsset(
                    icon,
                    height: 30,
                    width: 30,
                    color:
                    selected ? Styles.color.secondaryColor : Colors.white,
                  ),
              Styles.spaceHeight5,
              Text(
                title,
                style: Styles.textStyle.smallBoldTS.copyWith(
                  color: selected ? Styles.color.secondaryColor : Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
