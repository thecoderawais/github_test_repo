import 'package:alerts_app_ui_sample/screens/BottomNavigation.dart';
import 'package:alerts_app_ui_sample/screens/Cards.dart';
import 'package:alerts_app_ui_sample/screens/DashboardScreen.dart';
import 'package:alerts_app_ui_sample/screens/Dialog.dart';
import 'package:alerts_app_ui_sample/screens/ImageSlider.dart';
import 'package:alerts_app_ui_sample/screens/List.dart';
import 'package:alerts_app_ui_sample/screens/SettingScreen.dart';
import 'package:alerts_app_ui_sample/screens/SignInScreen.dart';
import 'package:alerts_app_ui_sample/screens/SignUpScreen.dart';
import 'package:alerts_app_ui_sample/screens/WalkThrough.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => T6SignIn(),
        /**Theme 6 screens routes*/
        T6WalkThrough.tag: (BuildContext context) => T6WalkThrough(),
        T6SignIn.tag: (BuildContext context) => T6SignIn(),
        T6SignUp.tag: (BuildContext context) => T6SignUp(),
        T6List.tag: (BuildContext context) => T6List(),
        T6Dashboard.tag: (BuildContext context) => T6Dashboard(),
        T6Dialog.tag: (BuildContext context) => T6Dialog(),
        T6Cards.tag: (BuildContext context) => T6Cards(),
        T6BottomNavigation.tag: (BuildContext context) => T6BottomNavigation(),
        T6ImageSlider.tag: (BuildContext context) => T6ImageSlider(),
        T6Setting.tag: (BuildContext context) => T6Setting(),
      },
    );
  }
}
