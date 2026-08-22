import 'package:flutter/material.dart';
import 'package:islami/core/sources/routs_manger.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RoutsManger.routs,
      // initialRoute: RoutsManger.spalch,
    );
  }
}