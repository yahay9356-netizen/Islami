import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/intro%20screens/intro%20screen3.dart';
import 'package:islami/intro%20screens/intro%20screen5.dart';

class Intro_Screen4 extends StatefulWidget {
  @override
  State<Intro_Screen4> createState() => _IntroScreen4State();
}

class _IntroScreen4State extends State<Intro_Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset("assets/gamh.png"),
            Image.asset("assets/yadye.png"),
            SizedBox(height: 50),
            Text(
              "Bearish",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 39),
            Text(
              "Praise the name of your Lord, the Most",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "High",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro_screen3()),
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
                SizedBox(width: 90),
                Image.asset("assets/Progress4.png"),
                SizedBox(width: 90),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro_screen5()),
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
