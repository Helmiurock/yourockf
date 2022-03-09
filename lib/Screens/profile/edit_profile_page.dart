import 'dart:io';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:you_rock_f/models/user.dart';
import 'package:you_rock_f/utils/user_preferences.dart';
import 'package:you_rock_f/models/widget/appbar_widget.dart';
import 'package:you_rock_f/models/widget/button_widget.dart';
import 'package:you_rock_f/models/widget/textfield_widget.dart';
import 'package:you_rock_f/models/widget/profile_widget.dart';
import 'package:you_rock_f/components/Custom_NavBar.dart';




class EditProfilePage extends StatefulWidget {
  static String routeName = "/edit_profile_page";
  const EditProfilePage({Key? key}) : super(key: key);
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
    child: Builder(
      builder: (context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath,
              isEdit: true,
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Full Name',
              text: user.name,
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Date Of Birth',
              text: user.dateOfBirth,
              onChanged: (dateOfBirth) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'Email',
              text: user.email,
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextFieldWidget(
              label: 'About',
              text: user.about,
              maxLines: 5,
              onChanged: (about) {},
            ),
          ],
        ),
      ),
    ),
  );
}