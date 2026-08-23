import 'package:flutter/material.dart';
import 'package:islami/intro%20screens/intro%20screen1.dart';
import 'package:islami/intro%20screens/intro%20screen3.dart';
import 'package:islami/intro%20screens/intro%20screen4.dart';
import 'package:islami/intro%20screens/intro%20screen5.dart';
import 'package:islami/main_layout/home_screen.dart';

class RoutsManger {
  static const String spalch = "splach";
  static const String homescreen = "homescreen";
  static const String introScreen1 = "intro screen1";
  static const String introScreen2 = "Intro screen2";
  static const String introScreen3 = "Intro screen3";
  static const String introScreen4 = "Intro screen4";
  static const String introScreen5 = "Intro screen4";
  static Map<String, WidgetBuilder> routs = {
    introScreen1: (context) => intro_screen1(),
    introScreen3: (context) => Intro_screen3(),
    introScreen4: (context) => Intro_Screen4(),
    introScreen5: (context) => Intro_screen5(),
    homescreen: (context) => HomeScreen(),
  };
}
