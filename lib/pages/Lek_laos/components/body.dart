import 'dart:core';
import 'package:flutter/material.dart';
import 'package:lek_det/components/showbottom_sheet.dart';
import 'package:lek_det/models/leklaos_model.dart';
import 'package:lek_det/pages/Lek_laos/components/card_laos.dart';
import 'package:lek_det/pages/main_screen/main_screen.dart';
import 'package:lek_det/components/search_box.dart';
import 'package:lek_det/style/constants.dart';
import '../../../components/background.dart';
import '../../../models/information_dates.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  List<int> revertIndex = [3, 2, 1, 0];
  var dates = [
    "23 ກຸມພາ 2021",
    "23 ກຸມພາ 2021",
    "22 ກຸມພາ 2021",
    "21 ກຸມພາ 2021",
  ];
  int currentPage = 0;

  List<MyDate> years;
  List<MyDate> months;
  List<MyDate> mydate;

  @override
  void initState() {
    super.initState();
    years = MyDate.getYears();
    months = MyDate.getMonths();
    mydate = MyDate.getDates();
  }

  String getDay, getMonth, getYear;

  void _getDate(String day, String month, String year) {
    getDay = day;
    getMonth = month;
    getYear = year;

    print("$getDay/$getMonth/$getYear");
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    PageController pageController =
    PageController(initialPage: 0, viewportFraction: 0.85);

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
                date: dates[currentPage],
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
              child: PageView.builder(
                onPageChanged: (index) {
                  print('page changed: $index');
                  setState(
                        () {
                      currentPage = index;
                    },
                  );
                },
                reverse: true,
                controller: pageController,
                itemCount: dates.length,
                itemBuilder: (context, index) => CardLaos(
                  two_digit: "555",
                  six_digit: "444",
                  pageChange: currentPage,
                  num: index,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                    (index) => buildDot(index: revertIndex[index]),
              ),
            ),
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
        return ShowBottomSheet(
          years: years,
          months: months,
          dates: mydate,
          getDate: _getDate,
        );
      },
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      margin: EdgeInsets.only(right: 5),
      height: currentPage == index ? 20 : 10,
      width: currentPage == index ? 20 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
