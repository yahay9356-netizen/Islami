import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/main_layout/SuraData.dart';
import 'package:islami/main_layout/quran%20screen.dart';
import 'package:flutter/services.dart' show rootBundle;

class Qran_ditelas extends StatefulWidget {
  final Surah surah;

  const Qran_ditelas({Key? key, required this.surah}) : super(key: key);

  @override
  State<Qran_ditelas> createState() => _Qran_ditelasState();
}

class _Qran_ditelasState extends State<Qran_ditelas> {
  String suraContant = "";

  @override
  void initState() {
    super.initState();
    _loadContant();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManeger.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Quran_screen()),
                  );
                },
                icon: ImageIcon(
                  AssetImage("assets/Arrow 1.png"),
                  color: ColorsManeger.yellow,
                ),
              ),
              const SizedBox(width: 120),
              Text(
                widget.surah.englishName,
                style: TextStyle(
                  color: ColorsManeger.yellow,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset("assets/img_left_corner.png"),
                Expanded(
                  child: Text(
                    widget.surah.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorsManeger.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Image.asset("assets/img_right_corner.png"),
              ],
            ),
          ),
          Expanded(
            child: suraContant.isEmpty
                ? Center(
                    child: CircularProgressIndicator(
                      color: ColorsManeger.yellow,
                    ),
                  )
                : SingleChildScrollView(
                    child: Text(
                      suraContant,
                      textAlign: TextAlign.center,
                      textDirection:TextDirection.rtl ,
                      style: TextStyle(
                        color: ColorsManeger.yellow,
                        fontSize: 30,
                      ),
                    ),
                  ),
          ),
          Image.asset("assets/img_bottom_decoration.png"),
        ],
      ),
    );
  }

  void _loadContant() async {
    try {
      String text = await rootBundle.loadString(
        'assets/Suras/${widget.surah.id}.txt',
      );
      List<String> SuraLines = text.trim().split("\n");
      for (int i = 0; i < SuraLines.length; i++) {
        SuraLines[i] = "${SuraLines[i]} [${i + 1}]";
      }
      await Future.delayed(Duration(microseconds: 1));
      setState(() {
        suraContant = SuraLines.join(" ");
      });
    } catch (e) {
      print("Error loading file: $e");
    }
  }
}
