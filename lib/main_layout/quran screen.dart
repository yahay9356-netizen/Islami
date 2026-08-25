import 'package:flutter/material.dart';
import 'package:islami/main_layout/SuraData.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/main_layout/qran%20ditelas.dart';

class Quran_screen extends StatelessWidget {
  int numberOfindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/Background.png", fit: BoxFit.cover),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 50),
                Image.asset("assets/gamh.png"),
                TextField(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                  decoration: InputDecoration(
                    fillColor: ColorsManeger.yellow,
                    prefixIcon: ImageIcon(AssetImage("assets/Icon.png")),
                    prefixIconColor: ColorsManeger.yellow,
                    hintText: "Sura Name",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: ColorsManeger.yellow,
                        width: 1.5,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: ColorsManeger.yellow,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Most Recently ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 14,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          SizedBox(width: 20),
                          Container(
                            width: 283,
                            height: 150,
                            decoration: BoxDecoration(
                              color: ColorsManeger.yellow,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Al-Anbiya",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "الأنبياء",
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      "112 Verses    ",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset("assets/Back.png"),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 10),
                    Text(
                      "Suras List",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: 114,
                    separatorBuilder: (context, index) => Divider(
                      color: Colors.white,
                      thickness: 1,
                      endIndent: 10,
                      indent: 10,
                    ),
                    itemBuilder: (context, index) {
                      final surah = QuranData.surahs[index];
                      return Row(
                        children: [
                          SizedBox(height: 60),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset("assets/frame.png"),
                              Text(
                                "${surah.id}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 25),
                          Column(
                            children: [
                              Text(
                                surah.englishName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "${surah.versesCount} Verses",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => Qran_ditelas(surah: surah)),
                                ),
                              );
                            },
                            child: Text(
                              surah.name,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
