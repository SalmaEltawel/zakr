import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakr/config/colors/colors.dart';
import 'package:zakr/features/home/details/hadeth_details.dart';
import 'package:zakr/models/hadeth_model.dart';

class HadethTab extends StatefulWidget {
   HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel>allHadeth=[];

  @override
  Widget build(BuildContext context) {
if(allHadeth.isEmpty){
  readHadethFile();

}
    return Column(
      children: [
        Container(
            alignment: Alignment.center,
            child: const Image(
              image: AssetImage("assets/images/hadeth_header.png"),
            )),
        const Divider(
          color: AppColors.primaryColor,
        ),
        Text(
          "الاحاديث",
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        const Divider(
          color: AppColors.primaryColor,
        ),
        Expanded(
          child: ListView.separated(itemBuilder:  (context, index) {
            return Center(child: InkWell(
              onTap: () {
                Navigator.pushNamed(context,HadethDetails.routeName,arguments:allHadeth[index] );
              },
              child: Text( allHadeth[index].title, style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w400)),
            ));
          }, separatorBuilder: (context, index) => const Divider(
            color: AppColors.primaryColor,
          ), itemCount:allHadeth.length ),
        )
      ],
    );
  }
  readHadethFile() async {
  String hadethFile=await rootBundle.loadString("assets/files/ahadeth.txt");
  List<String> ahadeth=hadethFile.split("#");
  for(int i=0;i<ahadeth.length;i++) {
    String hadethOne = ahadeth[i];
    List<String> hadethLines = hadethOne.trim().split("\n");
    String title = hadethLines[0];
    hadethLines.removeAt(0);
    List<String> content = hadethLines;
    HadethModel hadethModel = HadethModel(title: title, content: content);
    allHadeth.add(hadethModel);
  }
setState(() {

});

  }
}
