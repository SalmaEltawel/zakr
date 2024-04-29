import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakr/config/colors/colors.dart';
import 'package:zakr/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});

  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      readSuraFiles(suraModel.index);
    }

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg3.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            suraModel.name,
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),

        decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(30)),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  "${verses[index]} (${index+1})",
                  textAlign: TextAlign.center,
                   textDirection: TextDirection.rtl,
                   style: GoogleFonts.elMessiri(fontSize: 15,fontWeight:  FontWeight.w400),
                );
              },
              separatorBuilder: (context, index) => Divider(
                  color: AppColors.primaryColor, endIndent: 50, indent: 50),
              itemCount: verses.length),
        ),
      ),
    );
  }

  readSuraFiles(int index) async {
    String sura = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    verses = suraLines;
    setState(() {});
    print(verses);
  }
}
