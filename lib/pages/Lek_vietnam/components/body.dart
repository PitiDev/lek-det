import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:lek_det/components/custom_button_circle.dart';
import 'package:lek_det/components/showbottom_sheet.dart';
import 'package:lek_det/pages/Lek_laos/components/card_laos.dart';
import 'package:lek_det/components/page_view_indicator.dart';
import 'package:lek_det/components/search_box.dart';
import 'package:lek_det/pages/Lek_thai/components/card_thai.dart';
import 'package:lek_det/style/constants.dart';
import '../../../models/information_dates.dart';

import '../../../components/background.dart';
import 'card_vietnam.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  var dates = [
    "21 ກຸມພາ 2021",
    "22 ກຸມພາ 2021",
    "22 ກຸມພາ 2021",
    "23 ກຸມພາ 2021"
  ];
  int pageChange = 0;
  List<MyDate> years;
  List<MyDate> months;
  List<MyDate> mydates;
  @override
  void initState() {
    // print('context: $context');
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //
    // });
    super.initState();
    years = MyDate.getYears();
    months = MyDate.getMonths();
    mydates = MyDate.getDates();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    PageController pageController =
        PageController(initialPage: 0, viewportFraction: 0.7);

    return Background(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            Center(
              child: SearchBox(
                onChanged: (value) {},
                date: dates[pageChange],
                pressCalendar: () {
                  _showBottomSheet(size);
                },
                pressSearch: () {
                  print("Searching");
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  print('page changed: $index');
                  setState(() {
                    pageChange = index;
                  });
                },
                controller: pageController,
                children: [
                  CardVietnam(
                    award_1: "553511",
                    award_2: "553512",
                    award_3: "553522",
                    pageChange: pageChange,
                    num: 0,
                  ),
                  CardVietnam(
                    award_1: "553511",
                    award_2: "553512",
                    award_3: "553522",
                    pageChange: pageChange,
                    num: 1,
                  ),
                  CardVietnam(
                    award_1: "553511",
                    award_2: "553512",
                    award_3: "553522",
                    pageChange: pageChange,
                    num: 2,
                  ),
                  CardVietnam(
                    award_1: "553511",
                    award_2: "553512",
                    award_3: "553522",
                    pageChange: pageChange,
                    num: 3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PageViewIndicator(size: size, dates: dates, pageChange: pageChange),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(Size size) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowBottomSheet(years: years,months: months,dates: mydates,);
      },
    );
  }
}

