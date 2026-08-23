import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/intro%20screens/intro%20screen2.dart';
import 'package:islami/intro%20screens/intro%20screen4.dart';

class Intro_screen3 extends StatefulWidget {
  const Intro_screen3({super.key});

  @override
  State<Intro_screen3> createState() => _Intro_screen3State();
}

class _Intro_screen3State extends State<Intro_screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset("assets/gamh.png"),
            Image.asset("assets/qranBig.png"),
            SizedBox(height: 80),
            Text(
              "Reading the Quran",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Read, and your Lord is the Most Generous",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro_screen2()),
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
                Image.asset("assets/Progress3.png"),
                SizedBox(width: 90),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro_Screen4()),
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
