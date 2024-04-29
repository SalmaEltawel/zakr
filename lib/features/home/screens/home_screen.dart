import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakr/config/colors/colors.dart';
import 'package:zakr/features/home/tabs/hadeth_tab.dart';
import 'package:zakr/features/home/tabs/quran_tab.dart';
import 'package:zakr/features/home/tabs/radio_tab.dart';
import 'package:zakr/features/home/tabs/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
static const String routeName="homeScreen";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg3.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Center(
                child: Text(
              "Zakr",
              style: GoogleFonts.elMessiri(
                  fontSize: 25, fontWeight: FontWeight.w500),
            )),
            backgroundColor: Colors.transparent),
        body: tabs[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.primaryColor,
            type:BottomNavigationBarType.fixed ,
            selectedItemColor:AppColors.blackColor,
            unselectedItemColor: AppColors.whiteColor,
            currentIndex: index,
            onTap: (value) {
              index=value;
              setState(() {
              });
            },
            items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/quran.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/hadeth.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/sebha.png")),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/images/radio_blue.png")),
              label: ""),
        ]),
      ),
    );
  }
}

List<Widget> tabs = [
  QuranTab(),
  HadethTab(),
  SebhaTab(),
  RadioTab(),
];
