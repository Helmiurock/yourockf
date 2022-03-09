import 'package:you_rock_f/Screens/DisCover/DiscoverScreen.dart';
import 'package:you_rock_f/Screens/Friends/FriendsScreen.dart';
import 'package:you_rock_f/Screens/Home/HomeScreen.dart';
import 'package:you_rock_f/Screens/Inbox/InboxScreen.dart';
import 'package:you_rock_f/Screens/profile/ProfileScreen.dart';
import 'package:you_rock_f/Screens/profile/profile_page.dart';

import 'package:you_rock_f/components/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Route? route = ModalRoute.of(context);
    return Container(
      color: Colors.transparent,
      height: 120,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 30),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade50.withOpacity(0.5),
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: MenuState.home == selectedMenu
                          ? BoxDecoration(
                              color: Colors.grey.shade500,
                              borderRadius: BorderRadius.circular(15),
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
                          if (!(route!.settings.name == "/home"))
                            Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: MenuState.home == selectedMenu
                                    ? SvgPicture.asset(
                                        "assets/iconssvg/Home.svg",
                                        color: Color(0xff000000),
                                      )
                                    : SvgPicture.asset(
                                        "assets/iconssvg/Home_outlined.svg",
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                child: Text(
                                  "Home",
                                  style: TextStyle(
                                      color: MenuState.home == selectedMenu
                                          ? Color(0xff000000)
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!(route!.settings.name == "/discover"))
                          Navigator.pushNamed(context, Discover.routeName);
                      },
                      child: Container(
                        decoration: MenuState.discover == selectedMenu
                            ? BoxDecoration(
                                color: Colors.grey.shade500,
                                borderRadius: BorderRadius.circular(15),
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
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: MenuState.discover == selectedMenu
                                    ? SvgPicture.asset(
                                        "assets/iconssvg/loop.svg",
                                        color: Color(0xff000000),
                                      )
                                    : SvgPicture.asset(
                                        "assets/iconssvg/loop_outlined.svg",
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                child: Text(
                                  "Search",
                                  style: TextStyle(
                                      color: MenuState.discover == selectedMenu
                                          ? Color(0xff000000)
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: MenuState.profile == selectedMenu
                          ? BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(15),
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
                          if (!(route!.settings.name == "/profile"))
                            Navigator.pushNamed(
                                context, ProfileScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: MenuState.profile == selectedMenu
                                    ? SvgPicture.asset(
                                  "assets/iconssvg/profile.svg",
                                  color: Color(0xff000000),
                                )
                                    : SvgPicture.asset(
                                  "assets/iconssvg/profile_outlined.svg",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                      color: MenuState.profile == selectedMenu
                                          ? Color(0xff000000)
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: MenuState.inbox == selectedMenu
                          ? BoxDecoration(
                              color: Colors.grey.shade500,
                              borderRadius: BorderRadius.circular(15),
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
                          if (!(route!.settings.name == "/inbox"))
                            Navigator.pushNamed(context, InboxScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: MenuState.inbox == selectedMenu
                                    ? SvgPicture.asset(
                                        "assets/iconssvg/message.svg",
                                        color: Color(0xff000000),
                                      )
                                    : SvgPicture.asset(
                                        "assets/iconssvg/message_outlined.svg",
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                child: Text("Inbox",
                                    style: TextStyle(
                                        color: MenuState.inbox == selectedMenu
                                            ? Color(0xff000000)
                                            : Colors.black)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      decoration: MenuState.friends == selectedMenu
                          ? BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(15),
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
                          if (!(route!.settings.name == "/friends"))
                            Navigator.pushNamed(
                                context, FriendsScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 55,
                              width: 70,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(12, 12, 12, 0),
                                child: MenuState.friends == selectedMenu
                                    ? SvgPicture.asset(
                                  "assets/iconssvg/friends2.svg",
                                  color: Color(0xfff8811f),
                                )
                                    : SvgPicture.asset(
                                  "assets/iconssvg/friends_outlined.svg",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                child: Text(
                                  "Friends",
                                  style: TextStyle(
                                      color: MenuState.friends == selectedMenu
                                          ? Color(0xfff8811f)
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: MenuState.profile_page == selectedMenu
                          ? BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(15),
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
                          if (!(route!.settings.name == "/profile_page"))
                            Navigator.pushNamed(
                                context, ProfilePage.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: MenuState.profile_page == selectedMenu
                                    ? SvgPicture.asset(
                                  "assets/iconssvg/profile2.svg",
                                  color: Color(0xff000000),
                                )
                                    : SvgPicture.asset(
                                  "assets/iconssvg/profile_outlined.svg",
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                child: Text(
                                  "profile_page",
                                  style: TextStyle(
                                      color: MenuState.profile_page == selectedMenu
                                          ? Color(0xff000000)
                                          : Colors.black),
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
