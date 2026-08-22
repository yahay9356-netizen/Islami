import 'package:flutter/material.dart';
import 'package:islami/main_layout/home_screen.dart';
 class RoutsManger {
  static const String spalch="splach";
  static const String homescreen="homescreen";
  static Map<String,WidgetBuilder>routs={
    homescreen:(context)=>HomeScreen()
  };
}