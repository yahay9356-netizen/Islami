import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/main_layout/Hadith%20screen.dart';
import 'package:islami/main_layout/Radio%20screen.dart';
import 'package:islami/main_layout/Time%20screen.dart';
import 'package:islami/main_layout/quran%20screen.dart';
import 'package:islami/main_layout/spha%20screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tap = [
    Quran_screen(),
    Hadith_screen(),
    Spha_screen(),
    Time_screen(),
    Radio_screen(),
  ];

  int slectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.black,
      body: tap[slectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: slectedIndex,
        onTap: (index) {
          slectedIndex = index;
          setState(() {});
        },
        backgroundColor: ColorsManeger.yellow,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Colors.white),
        unselectedIconTheme: IconThemeData(color: Colors.black),
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedFontSize: 15,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/Vector.png")),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/hadith.png")),
            label: 'hadith',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/necklace-islam-svgrepo-com 1.png"),
            ),
            label: 'Spha',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/Radio.png")),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/hadith.png")),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
