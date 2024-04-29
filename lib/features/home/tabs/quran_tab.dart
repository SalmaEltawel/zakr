import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zakr/config/colors/colors.dart';
import 'package:zakr/config/routes/routes.dart';
import 'package:zakr/features/home/details/sura_details.dart';
import 'package:zakr/models/sura_model.dart';

class QuranTab extends StatelessWidget {
  QuranTab({super.key});

  List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Image.asset("assets/images/Screenshot (1).png"),
        ),
        Divider(
          color: AppColors.primaryColor,
        ),
        Text(
          "اسم السوره",
          style:
              GoogleFonts.elMessiri(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        Divider(
          color: AppColors.primaryColor,
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Center(
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, SuraDetails.routeName,
                              arguments: SuraModel(
                                  name: suraNames[index], index: index));
                        },
                        child: Text(
                          suraNames[index],
                          style: GoogleFonts.elMessiri(
                              fontSize: 25, fontWeight: FontWeight.w400),
                        )));
              },
              separatorBuilder: (context, index) => Divider(
                    color: AppColors.primaryColor,
                  ),
              itemCount: suraNames.length),
        )
      ],
    );
  }
}
