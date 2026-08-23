import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/intro%20screens/intro%20screen4.dart';
import 'package:islami/main_layout/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intro_screen5 extends StatefulWidget {
  @override
  State<Intro_screen5> createState() => _Intro_screen5State();
}

class _Intro_screen5State extends State<Intro_screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            Image.asset("assets/gamh.png"),
            Image.asset("assets/Microphone.png"),
            SizedBox(height: 50),
            Text(
              "Holy Quran Radio",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              "You can listen to the Holy Quran Radio",
              style: TextStyle(
                color: ColorsManeger.yellow,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro_Screen4()),
                    );
                  },
                  child: Text(
                    "Back",
                    style: TextStyle(
                      color: ColorsManeger.yellow,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(width: 80),
                Image.asset("assets/Progress5.png"),
                SizedBox(width: 80),
                TextButton(
                  onPressed: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool("showHome", true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: ColorsManeger.yellow,
                      fontSize: 22,
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
