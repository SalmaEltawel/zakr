import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakr/models/hadeth_model.dart';

import '../../../config/colors/colors.dart';

class HadethDetails extends StatelessWidget {
  HadethDetails({super.key});

  static const String routeName = "hadethDetails";

  @override
  Widget build(BuildContext context) {
    var hadethModel = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/bg3.png"))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            hadethModel.title,
            style: GoogleFonts.elMessiri(
                fontSize: 25, fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: AppColors.whiteColor),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  hadethModel.content[index],
                  textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(
                      fontSize: 15, fontWeight: FontWeight.w400),
                );
              },
              separatorBuilder: (context, index) => Divider(
                  color: AppColors.primaryColor, endIndent: 50, indent: 50),
              itemCount: hadethModel.content.length),
        ),
      ),
    );
  }
}
