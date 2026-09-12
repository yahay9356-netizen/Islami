import 'package:flutter/material.dart';
import 'package:islami/core/sources/colors_maneger.dart';
import 'package:islami/core/sources/routs_manger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreensLayout extends StatefulWidget {
  const IntroScreensLayout({super.key});

  @override
  State<IntroScreensLayout> createState() => _IntroScreensLayoutState();
}

class _IntroScreensLayoutState extends State<IntroScreensLayout> {
  final PageController _pageController = PageController();
  int currentIndex = 0;
  static const String name = "intro";
  final List<String> progressImages = [
    "assets/Progress.png",
    "assets/Progress2.png",
    "assets/Progress3.png",
    "assets/Progress4.png",
    "assets/Progress5.png",
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() async {
    if (currentIndex == 4) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool("showHome", true);
      if (mounted) {
        // استخدام RoutesManager زي ما اتفقنا
        Navigator.pushReplacementNamed(context, RoutsManger.homescreen);
      }
    } else {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // جلب أبعاد الشاشة (الطول والعرض) عشان نخلي التصميم متجاوب
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor:
      ColorsManeger.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02), // مسافة علوية نسبية
            // صورة المسجد العلوية (تاخد 15% من طول الشاشة عشان متكبرش أوي)
            Image.asset(
              "assets/gamh.png",
              height: size.height * 0.15,
              fit: BoxFit.contain,
            ),

            // الـ PageView اللي بتعرض محتوى كل صفحة
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: [
                  _buildPage1(size),
                  _buildPage2(size),
                  _buildPage3(size),
                  _buildPage4(size),
                  _buildPage5(size),
                ],
              ),
            ),

            // شريط التنقل السفلي
            Padding(
              padding: EdgeInsets.only(
                bottom: size.height * 0.04, // مسافة سفلية متجاوبة
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // زر الرجوع
                  currentIndex == 0
                      ? const SizedBox(width: 60)
                      : TextButton(
                    onPressed: _previousPage,
                    child: const Text(
                      "Back",
                      style: TextStyle(
                        color: ColorsManeger.yellow,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  // صورة الـ Progress (عرضها يتناسب مع الشاشة)
                  Image.asset(
                    progressImages[currentIndex],
                    width: size.width * 0.35,
                    fit: BoxFit.contain,
                  ),

                  // زر التالي
                  TextButton(
                    onPressed: _nextPage,
                    child: const Text(
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
            ),
          ],
        ),
      ),
    );
  }

  // ---------------- تصميم محتوى الصفحات (متجاوب) ---------------- //

  Widget _buildPage1(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/trhep.png", height: size.height * 0.35, fit: BoxFit.contain),
        SizedBox(height: size.height * 0.05),
        const Text(
          "Welcome To Islmi App",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget _buildPage2(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/intro 2.png", height: size.height * 0.35, fit: BoxFit.contain),
        SizedBox(height: size.height * 0.04),
        const Text(
          "Welcome To Islmi App",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 24, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: size.height * 0.02),
        const Text(
          "We Are Very Excited To Have You In Our",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.01),
        const Text(
          "Community",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget _buildPage3(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/qranBig.png", height: size.height * 0.35, fit: BoxFit.contain),
        SizedBox(height: size.height * 0.05),
        const Text(
          "Reading the Quran",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: size.height * 0.02),
        const Text(
          "Read, and your Lord is the Most Generous",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 16, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildPage4(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/yadye.png", height: size.height * 0.35, fit: BoxFit.contain),
        SizedBox(height: size.height * 0.05),
        const Text(
          "Bearish",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 30, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: size.height * 0.02),
        const Text(
          "Praise the name of your Lord, the Most",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: size.height * 0.01),
        const Text(
          "High",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget _buildPage5(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/Microphone.png", height: size.height * 0.35, fit: BoxFit.contain),
        SizedBox(height: size.height * 0.05),
        const Text(
          "Holy Quran Radio",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        SizedBox(height: size.height * 0.02),
        const Text(
          "You can listen to the Holy Quran Radio",
          style: TextStyle(color: ColorsManeger.yellow, fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}