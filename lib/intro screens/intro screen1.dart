import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/intro%20screens/intro%20screen2.dart';

class intro_screen1 extends StatefulWidget {
  const intro_screen1({super.key});

  @override
  State<intro_screen1> createState() => _intro_screen1State();
}

class _intro_screen1State extends State<intro_screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Image.asset("assets/gamh.png"),
            Image.asset("assets/trhep.png"),
            SizedBox(height: 50),
            Text(
              "Welcome To Islmi App",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 80),
            Row(
              children: [
                SizedBox(width: 155),
                Image.asset("assets/Progress.png"),
                SizedBox(width: 100),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro_screen2()),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: ColorsManeger.yellow,
                      fontSize: 16,
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
