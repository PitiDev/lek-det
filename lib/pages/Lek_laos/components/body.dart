import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:lek_det/components/showbottom_sheet.dart';
import 'package:lek_det/pages/Lek_laos/components/card_laos.dart';
import 'package:lek_det/components/page_view_indicator.dart';
import 'package:lek_det/components/search_box.dart';
import 'package:lek_det/style/constants.dart';
import '../../../components/background.dart';
import '../../../components/custom_button_circle.dart';
import '../../../models/information_dates.dart';

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
  List<MyDate> mydate;

  @override
  void initState(){
    super.initState();
    years = MyDate.getYears();
    months = MyDate.getMonths();
    mydate = MyDate.getDates();
  }

  String getDay, getMonth, getYear;
  void _getDate(String day, String month, String year){
   getDay = day;
   getMonth = month;
   getYear = year;

   print("$getDay/$getMonth/$getYear");
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
                  CardLaos(
                    two_digit: "22",
                    six_digit: "442232",
                    pageChange: pageChange,
                    num: 0,
                  ),
                  CardLaos(
                    two_digit: "22",
                    six_digit: "442232",
                    pageChange: pageChange,
                    num: 1,
                  ),
                  CardLaos(
                    two_digit: "22",
                    six_digit: "442232",
                    pageChange: pageChange,
                    num: 2,
                  ),
                  CardLaos(
                    two_digit: "22",
                    six_digit: "442232",
                    pageChange: pageChange,
                    num: 3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PageViewIndicator(size: size, dates: dates, pageChange: pageChange),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(Size size) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowBottomSheet(years: years,months: months,dates: mydate, getDate: _getDate,);
      },
    );
  }
}

