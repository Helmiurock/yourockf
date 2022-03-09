import 'dart:math';
import 'package:you_rock_f/components/Profile_NavBar.dart';
import 'package:you_rock_f/components/Custom_NavBar.dart';
import 'package:you_rock_f/components/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';


class MyPicksScreen extends StatefulWidget {
  static String routeName = "/mypicks";
  const MyPicksScreen({Key? key}) : super(key: key);

  @override
  _MyPicksScreenState createState() => _MyPicksScreenState();
}

class _MyPicksScreenState extends State<MyPicksScreen> {
  static Random random = Random();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            child: Stack(children: [
              Container(
                // temp
                height: MediaQuery.of(context).size.height,
                color: Colors.grey.shade300,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        primary: false,
                        padding: EdgeInsets.all(5),
                        itemCount: 6,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 200 / 300,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    "assets/images/px$index.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Positioned.fill(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 100,
                                      ),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            SvgPicture.asset(
                                              "assets/iconssvg/cross.svg",
                                              height: 170,
                                            ),
                                          ],
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 300,
                      )
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ProfileNavBar(
                    selectedMenu: MenuState.mypicks,
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomNavBar(
                    selectedMenu: MenuState.profile,
                  ),
                ),
              ),
            ]),
          ),
        ));
  }
}
