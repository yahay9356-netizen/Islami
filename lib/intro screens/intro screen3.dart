import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';

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
            SizedBox(height: 50),
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
                  onPressed: () {},
                  child: Text(
                    "Back",
                    style: TextStyle(color: ColorsManeger.yellow,fontSize: 20),
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
