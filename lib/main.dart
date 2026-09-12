import 'package:flutter/material.dart';
import 'package:islami/core/sources/routs_manger.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome = prefs.getBool('showHome') ?? false;
  final String startingRoute = showHome
      ? RoutsManger.homescreen
      : RoutsManger.introScreen1;
      
  runApp(Islami(startRoute: startingRoute));
}

class Islami extends StatelessWidget {
  final String startRoute; 

  const Islami({super.key, required this.startRoute}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RoutsManger.routs,
      initialRoute: RoutsManger.introScreen,
    );
  }
}