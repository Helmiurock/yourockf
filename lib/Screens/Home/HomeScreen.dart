import 'package:you_rock_f/Screens/Home/home_card.dart';
import 'package:you_rock_f/components/Custom_NavBar.dart';
import 'package:you_rock_f/components/data.dart';
import 'package:you_rock_f/components/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';


class HomeScreen extends StatefulWidget {
  static String routeName = "/home";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.green,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                color: Colors.grey.shade300,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 10, right: 20, top: 10),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                width: 150,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      direction: Axis.horizontal,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                              const EdgeInsets.all(5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 5,
                                                      offset: Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                  color: Colors.white,
                                                ),
                                                height: 45,
                                                width: 45,
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(2.0),
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        'assets/images/avtar.jpg'),
                                                    radius: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Helmi",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),

                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),


                              Spacer(),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/iconssvg/ic_launcher.svg",

                                    height: 50,
                                  ),
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "assets/iconssvg/notification_outlined.svg",
                                    height: 30,
                                  ),
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "assets/iconssvg/challengesB.svg",
                                    height: 60,
                                  ),
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "assets/iconssvg/setting.svg",
                                    height: 30,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        posts.length,
                        (index) {
                          Map post = posts[index];
                          return HomeCard(
                            dp: post["dp"],
                            name: post['name'],
                            img: "assets/images/dm$index.jpg",
                            des: post['des'],
                            hash: post['hash'],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: CustomNavBar(
                  selectedMenu: MenuState.home,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
