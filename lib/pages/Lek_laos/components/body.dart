import 'dart:core';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:lek_det/components/showbottom_sheet.dart';
import 'package:lek_det/models/leklaos_model.dart';
import 'package:lek_det/pages/Lek_laos/components/card_laos.dart';
import 'package:lek_det/pages/main_screen/main_screen.dart';
import 'package:lek_det/components/search_box.dart';
import 'package:lek_det/providers/lek_lao_provider.dart';
import 'package:lek_det/style/constants.dart';
import 'package:provider/provider.dart';
import '../../../components/background.dart';
import '../../../models/information_dates.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:lek_det/providers/lek_lao_provider.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  List<int> revertIndex = [2, 1, 0];

  var numDot = 3;
  var dates = [];
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
    dates = [
      Provider.of<LekLaosProvider>(context, listen: false).lekLaoInfo[0]["date"],
      Provider.of<LekLaosProvider>(context, listen: false).lekLaoInfo[1]["date_lottery"],
      Provider.of<LekLaosProvider>(context, listen: false).lekLaoInfo[2]["date_lottery"],
    ];

    // Provider.of<LekLaosProvider>(
    //   context,
    //   listen: false,
    // ).initData();
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
                date: dates.length == 0 ? "no date" : dates[currentPage],
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
              child: Consumer(
                builder: (context, LekLaosProvider provider, Widget child) {
                  var count = provider.lekLaoInfo;
                  // setState(() {
                  //   numDot = provider.getLekLaoInfo() == null ? 1 : provider.getLekLaoInfo().length;
                  // });
                  if (count == null) {
                    return Center(
                      child: Text("no data"),
                    );
                  } else {
                    // dates = [
                    //   provider.lekLaoInfo[0]["date"],
                    //   provider.lekLaoInfo[1]["date_lottery"],
                    //   provider.lekLaoInfo[2]["date_lottery"]
                    // ];
                    return PageView.builder(
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
                      // itemCount: _getData == null ? 1 : _getData.length,
                      itemCount: provider.lekLaoInfo.length,
                      itemBuilder: (context, index) => CardLaos(
                        two_digit: index == 0
                            ? provider.lekLaoInfo[index]["twodigit"]
                            : "ບໍ່ມີ",
                        six_digit: index == 0
                            ? provider.lekLaoInfo[index]["sixdigit"]
                            : "ບໍ່ມີ",
                        // two_digit: "444",
                        // six_digit: "444",
                        pageChange: currentPage,
                        num: index,
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                numDot,
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
