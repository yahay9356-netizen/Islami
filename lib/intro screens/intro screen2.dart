import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/intro%20screens/intro%20screen1.dart';
import 'package:islami/intro%20screens/intro%20screen3.dart';

class Intro_screen2 extends StatefulWidget {
  @override
  State<Intro_screen2> createState() => _Intro_screen2State();
}

class _Intro_screen2State extends State<Intro_screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            Image.asset("assets/gamh.png"),
            Image.asset("assets/intro 2.png"),
            SizedBox(height: 30),
            Text(
              "Welcome To Islmi App",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "We Are Very Excited To Have You In Our",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Community",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => intro_screen1()),
                    );
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                      color: ColorsManeger.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 85),
                Image.asset("assets/Progress2.png"),
                SizedBox(width: 85),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro_screen3()),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: ColorsManeger.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
