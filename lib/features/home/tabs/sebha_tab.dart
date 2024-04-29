import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakr/config/colors/colors.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    " الله اكبر "
  ];

  int index = 0;
  double angle=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Image(
                      height: 100,
                      image: AssetImage("assets/images/head of seb7a.png")),
                )),
            GestureDetector(
              child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 75.0),
                    child: InkWell(
                      onTap: () {
                        onClickImage();
                        
                      },
                      child: Transform.rotate(
                        angle: angle,
                        child: Image(
                            image: AssetImage("assets/images/body of seb7a.png")),
                      ),
                    ),
                  )),
            )
          ],
        ),
        Text(
          "عدد التسبيحات",
          style:
          GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(30)),
          child: Text("$counter"),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Color(0xffB7935F),
              borderRadius: BorderRadius.circular(30)),
          child: Text(azkar[index]),
        )
      ],
    );
  }

  int counter = 0;

  onClickImage(){
    angle=angle+15;
    if(counter==33){
      counter=0;
      index++;
    }
    if(index==4){
      index=0;
    }
    setState(() {
      counter++;
    });
  }
}
