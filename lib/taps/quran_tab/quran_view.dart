import 'package:flutter/material.dart';
import 'package:islamy/data_class/soura.dart';
import 'package:islamy/taps/quran_tab/names_list_widget.dart';
import 'package:islamy/taps/quran_tab/text_head.dart';
import 'package:islamy/widgets/global_divid.dart';

class QuranView extends StatelessWidget {
  List<Soura> sour = [];
  List<String> quranVerseCounts = [
    "7", // Al-Fatiha
    "286", // Al-Baqarah
    "200", // Al-Imran
    "176", // An-Nisa
    "120", // Al-Maidah
    "165", // Al-An'am
    "206", // Al-A'raf
    "75", // Al-Anfal
    "129", // At-Tawbah
    "109", // Yunus
    "123", // Hud
    "111", // Yusuf
    "43", // Ar-Ra'd
    "52", // Ibrahim
    "99", // Al-Hijr
    "128", // An-Nahl
    "111", // Al-Isra
    "110", // Al-Kahf
    "98", // Maryam
    "135", // Ta-Ha
    "112", // Al-Anbiya
    "78", // Al-Hajj
    "118", // Al-Mu'minun
    "64", // An-Nur
    "77", // Al-Furqan
    "227", // Ash-Shu'ara
    "93", // An-Naml
    "88", // Al-Qasas
    "69", // Al-Ankabut
    "60", // Ar-Rum
    "34", // Luqman
    "30", // As-Sajda
    "73", // Al-Ahzab
    "54", // Saba
    "45", // Fatir
    "83", // Ya-Sin
    "182", // As-Saffat
    "88", // Sad
    "75", // Az-Zumar
    "85", // Ghafir
    "54", // Fussilat
    "53", // Ash-Shura
    "89", // Az-Zukhruf
    "59", // Ad-Dukhan
    "37", // Al-Jathiyah
    "35", // Al-Ahqaf
    "38", // Muhammad
    "29", // Al-Fath
    "18", // Al-Hujurat
    "45", // Qaf
    "60", // Adh-Dhariyat
    "49", // At-Tur
    "62", // An-Najm
    "55", // Al-Qamar
    "78", // Ar-Rahman
    "96", // Al-Waqi'ah
    "29", // Al-Hadid
    "22", // Al-Mujadila
    "24", // Al-Hashr
    "13", // Al-Mumtahanah
    "14", // As-Saff
    "11", // Al-Jumu'ah
    "11", // Al-Munafiqun
    "18", // At-Taghabun
    "12", // At-Talaq
    "12", // At-Tahrim
    "30", // Al-Mulk
    "52", // Al-Qalam
    "52", // Al-Haaqqa
    "44", // Al-Ma'arij
    "28", // Nuh
    "28", // Al-Jinn
    "20", // Al-Muzzammil
    "56", // Al-Muddathir
    "40", // Al-Qiyamah
    "31", // Al-Insan
    "50", // Al-Mursalat
    "40", // An-Naba
    "46", // An-Nazi'at
    "42", // Abasa
    "29", // At-Takwir
    "19", // Al-Infitar
    "36", // Al-Mutaffifin
    "25", // Al-Inshiqaq
    "22", // Al-Buruj
    "17", // At-Tariq
    "19", // Al-A'la
    "26", // Al-Ghashiyah
    "30", // Al-Fajr
    "20", // Al-Balad
    "15", // Ash-Shams
    "21", // Al-Lail
    "11", // Ad-Duha
    "8", // Ash-Sharh
    "8", // At-Tin
    "19", // Al-Alaq
    "5", // Al-Qadr
    "8", // Al-Bayyinah
    "8", // Az-Zalzalah
    "19", // Al-Adiyat
    "5", // Al-Qari'ah
    "8", // At-Takathur
    "3", // Al-Asr
    "9", // Al-Humazah
    "5", // Al-Fil
    "4", // Quraish
    "7", // Al-Ma'un
    "3", // Al-Kawthar
    "6", // Al-Kafirun
    "3", // An-Nasr
    "5", // Al-Masad
    "4", // Al-Ikhlas
    "5", // Al-Falaq
    "6", // An-Nas
  ];
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
  QuranView({super.key}) {
    ////fill Sour List ////
    for (int i = 0; i < souraNames.length; i++) {
      sour.add(
          Soura(souraName: souraNames[i], ayatNumber: quranVerseCounts[i]));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/quran.png'),
        const SizedBox(
          height: 13.5,
        ),
        Expanded(
          child: Stack(
            children: [
              Column(
                children: [
                  const DivideHorizental(),
                  Row(
                    children: [
                      TextHead(
                        textTitle: 'عدد الآيات',
                      ),
                      TextHead(
                        textTitle: 'اسم السورة',
                      ),
                    ],
                  ),
                  const DivideHorizental(),
                  NamesListWidget(
                    sour: sour,
                  ),
                ],
              ),
              Center(
                child: VerticalDivider(
                  thickness: 3,
                  indent: 0,
                  endIndent: 0,
                  width: 0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
  /*  Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const DivideHorizental(),
                    TextHead(
                      textTitle: 'عدد الآيات',
                    ),
                    const DivideHorizental(),
                    NamesListWidget(
                      sour: sour,
                     
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
                          const DivideHorizental(),
                          TextHead(
                            textTitle: 'اسم السورة',
                          ),
                          const DivideHorizental(),
                          NamesListWidget(
                            souraNames: souraNames,
                            isClicked: true,
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
       */
          