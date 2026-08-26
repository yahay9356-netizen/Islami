import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../core/sources/colors_maneger.dart';

class Hadith_screen extends StatefulWidget {
  Hadith_screen({super.key});

  @override
  State<Hadith_screen> createState() => _Hadith_screenState();
}

class _Hadith_screenState extends State<Hadith_screen> {
  int? index;
  List<String> titles = List.generate(50, ((index) => ""));
  List<String> ElhadithContant = List.generate(50, ((index) => ""));
  String title = "";

  @override
  void initState() {
    super.initState();
    loadElhadith();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset("assets/Background (1).png", fit: BoxFit.fill),
          ),

          Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset("assets/gamh.png"),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 600,
                    viewportFraction: 0.7,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                  items: List.generate(50, (index) => index).map((i) {
                    return Container(
                      width: 313,
                      height: 600,
                      decoration: BoxDecoration(
                        color: ColorsManeger.yellow,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/left_corner.png"),

                                  Image.asset("assets/right_corner.png"),
                                ],
                              ),
                              Text(
                                titles[i],
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: ElhadithContant[i].isEmpty
                                ? Center(
                                    child: CircularProgressIndicator(
                                      color: ColorsManeger.black,
                                    ),
                                  )
                                : SingleChildScrollView(
                                    child: Text(
                                      ElhadithContant[i],
                                      style: TextStyle(fontSize: 20),
                                      textDirection: TextDirection.rtl,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void loadElhadith() async {
    for (int i = 0; i < 50; i++) {
      String path = "assets/Hadeeth/h${i + 1}.txt";
      String contant = await rootBundle.loadString(path);
      List<String> hadithLines = contant.trim().split("\n");
      titles[i] = hadithLines[0];
      hadithLines.removeAt(0);
      ElhadithContant[i] =hadithLines.join();
    }
    setState(() {});
  }
}
