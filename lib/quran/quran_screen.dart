import 'package:flutter/material.dart';
import 'package:islami_app/quran/sura_name_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../my_theme.dart';

class QuranTab extends StatelessWidget {

  List<String> suraName=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset('assets/images/quran_tab_icon.png'),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          AppLocalizations.of(context)!.sura_name,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Divider(
          thickness: 3,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: suraName.length,
              itemBuilder:  (context, index) {
                return SuraNameItem(suraName[index],index);
              },
              separatorBuilder: (context, index) => Divider(
                indent: 20,
                endIndent: 20,
                color: Theme.of(context).primaryColor,
              ),
              ),
        )
      ],
    );
  }
}
