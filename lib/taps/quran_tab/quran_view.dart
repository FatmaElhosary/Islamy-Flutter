import 'package:flutter/material.dart';
import 'package:islamy/taps/quran_tab/names_list_widget.dart';
import 'package:islamy/taps/quran_tab/text_head.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key});
  List<String> souraNames = [
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/quran.png'),
        const SizedBox(
          height: 13.5,
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Divider(
                      height: 0,
                      thickness: 3,
                      color: Theme.of(context).primaryColor,
                    ),
                    TextHead(
                      textTitle: 'عدد الآيات',
                    ),
                    Divider(
                      thickness: 3,
                      color: Theme.of(context).primaryColor,
                    ),
                    NamesListWidget(
                      souraNames: souraNames,
                    )
                  ],
                ),
              ),
              VerticalDivider(
                thickness: 3,
                indent: 0,
                endIndent: 0,
                width: 0,
                color: Theme.of(context).primaryColor,
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Divider(
                            height: 0,
                            thickness: 3,
                            color: Theme.of(context).primaryColor,
                          ),
                          TextHead(
                            textTitle: 'اسم السورة',
                          ),
                          Divider(
                            thickness: 3,
                            color: Theme.of(context).primaryColor,
                          ),
                          NamesListWidget(
                            souraNames: souraNames,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
