import 'package:you_rock_f/Screens/DisCover/DiscoverScreen.dart';
import 'package:you_rock_f/Screens/Home/HomeScreen.dart';
import 'package:you_rock_f/Screens/Inbox/InboxScreen.dart';
import 'package:you_rock_f/Screens/profile/ProfileScreen.dart';
import 'package:you_rock_f/Screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:you_rock_f/Screens/Friends/FriendsScreen.dart';
import 'package:you_rock_f/Screens/profile/edit_profile_page.dart';
import 'package:you_rock_f/Screens/Myadds/MyAddsScreen.dart';
import 'package:you_rock_f/Screens/Mychallenges/MyChallengesScreen.dart';
import 'package:you_rock_f/Screens/Mypicks/MyPicksScreen.dart';


final Map<String, WidgetBuilder> routes = {
  //SplashPage.routeName: (context) => SplashPage(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  InboxScreen.routeName: (context) => InboxScreen(),
  Discover.routeName: (context) => Discover(),
  ProfilePage.routeName: (context) => ProfilePage(),
  EditProfilePage.routeName: (context) => EditProfilePage(),
  FriendsScreen.routeName: (context) => FriendsScreen(),
  MyChallengesScreen.routeName: (context) => MyChallengesScreen(),
  MyAddsScreen.routeName: (context) => MyAddsScreen(),
  MyPicksScreen.routeName: (context) => MyPicksScreen(),



};
