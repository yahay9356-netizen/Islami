import 'package:flutter/material.dart';

class Spha_screen extends StatefulWidget {
  @override
  State<Spha_screen> createState() => _Spha_screenState();
}

class _Spha_screenState extends State<Spha_screen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset("assets/sepha Background.png", fit: BoxFit.fill),
          ),

          Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                Image.asset("assets/gamh.png"),
                SizedBox(height: 60),
                Image.asset("assets/head.png"),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (counter == 33) {
                          counter = 0;
                        }
                        counter++;
                        setState(() {});
                      },
                      child: Image.asset("assets/SebhaBody 1.png"),
                    ),
                    Text(
                      "سبحان للة",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                    Positioned(
                      bottom: 100,
                      child: Text(
                        "$counter",
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
