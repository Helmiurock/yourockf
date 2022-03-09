import 'package:you_rock_f/Screens/Myadds/MyAddsScreen.dart';
import 'package:you_rock_f/Screens/Mychallenges/MyChallengesScreen.dart';
import 'package:you_rock_f/Screens/Mypicks/MyPicksScreen.dart';

import 'package:you_rock_f/components/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileNavBar extends StatelessWidget {
  const ProfileNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Route? route = ModalRoute.of(context);
    return Container(
      color: Colors.transparent,
      height: 105,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 330),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: MenuState.mychallenges == selectedMenu
                          ? BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 8,
                              offset: Offset(
                                  0, 5), // changes position of shadow
                            ),
                          ])
                          : null,
                      child: GestureDetector(
                        onTap: () {
                          if (!(route!.settings.name == "/mychallenges"))
                            Navigator.pushNamed(context, MyChallengesScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 89,
                              width: 89,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: MenuState.mychallenges == selectedMenu
                                    ? SvgPicture.asset(
                                  "assets/iconssvg/mychallenges.svg",

                                )
                                    : SvgPicture.asset(
                                  "assets/iconssvg/mychallenges.svg",
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: MenuState.mypicks == selectedMenu
                          ? BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 8,
                              offset: Offset(
                                  0, 5), // changes position of shadow
                            ),
                          ])
                          : null,
                      child: GestureDetector(
                        onTap: () {
                          if (!(route!.settings.name == "/mypicks"))
                            Navigator.pushNamed(
                                context, MyPicksScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 89,
                              width: 89,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                                child: MenuState.mypicks == selectedMenu
                                    ? SvgPicture.asset(
                                  "assets/iconssvg/mypicks2.svg",

                                )
                                    : SvgPicture.asset(
                                  "assets/iconssvg/mypicks2.svg",
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: MenuState.myadds == selectedMenu
                          ? BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(3),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 8,
                              offset: Offset(
                                  0, 5), // changes position of shadow
                            ),
                          ])
                          : null,
                      child: GestureDetector(
                        onTap: () {
                          if (!(route!.settings.name == "/myadds"))
                            Navigator.pushNamed(
                                context, MyAddsScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(1, 1, 1, 0),
                                child: MenuState.myadds == selectedMenu
                                    ? SvgPicture.asset(
                                  "assets/iconssvg/myadds.svg",

                                )
                                    : SvgPicture.asset(
                                  "assets/iconssvg/myadds.svg",
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
