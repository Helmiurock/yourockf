import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:you_rock_f/NavigationRoutes.dart';
import 'package:you_rock_f/Screens/profile/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:you_rock_f/Screens/profile/profile_page.dart';
import 'package:you_rock_f/themes.dart';
import 'package:you_rock_f/utils/user_preferences.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static final String title = 'User Profile';
  final MaterialColor colorCustom = MaterialColor(0xff651CE5, color);
  @override
  Widget build(BuildContext context) {
    final user = UserPreferences.myUser;

    return ThemeProvider(
      initTheme: user.isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
      child: Builder(
        builder: (context) => MaterialApp(
          title: 'You Rock',
          debugShowCheckedModeBanner: false,
          theme:ThemeData( primaryColor: Colors.blue.shade300,
            dividerColor: Colors.black,),
          initialRoute: ProfileScreen.routeName,
          routes: routes,

          home: ProfilePage(),
        ),
      ),
    );
  }
}

Map<int, Color> color = {
  50: Color.fromRGBO(102, 28, 229, .1),
  100: Color.fromRGBO(102, 28, 229, .2),
  200: Color.fromRGBO(102, 28, 229, .3),
  300: Color.fromRGBO(102, 28, 229, .4),
  400: Color.fromRGBO(102, 28, 229, .5),
  500: Color.fromRGBO(102, 28, 229, .6),
  600: Color.fromRGBO(102, 28, 229, .7),
  700: Color.fromRGBO(102, 28, 229, .8),
  800: Color.fromRGBO(102, 28, 229, .9),
  900: Color.fromRGBO(102, 28, 229, 1),
};
