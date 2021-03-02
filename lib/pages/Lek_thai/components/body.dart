import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:lek_det/components/custom_button_circle.dart';
import 'package:lek_det/pages/Lek_laos/components/card_laos.dart';
import 'package:lek_det/components/page_view_indicator.dart';
import 'package:lek_det/components/search_box.dart';
import 'package:lek_det/pages/Lek_thai/components/card_thai.dart';
import 'package:lek_det/style/constants.dart';

import '../../../components/background.dart';

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

  @override
  void initState() {
    // print('context: $context');
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //
    // });
    super.initState();
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
                  CardThai(
                    award_1: "553511",
                    award_2: "553512",
                    award_3: "553522",
                    pageChange: pageChange,
                    num: 0,
                  ),
                  CardThai(
                    award_1: "553511",
                    award_2: "553512",
                    award_3: "553522",
                    pageChange: pageChange,
                    num: 1,
                  ),
                  CardThai(
                    award_1: "553511",
                    award_2: "553512",
                    award_3: "553522",
                    pageChange: pageChange,
                    num: 2,
                  ),
                  CardThai(
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
        return Container(
          width: size.width,
          height: size.height * 0.40,
          color: Color(0xFF737373),
          child: Container(
              padding: EdgeInsets.only(top: 10, left: 30, bottom: 20, right: 0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width * 0.9,
                    height: size.height * 0.25,
                    // color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            // color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ປະຈໍາປີ",
                                  style: TextStyle(
                                      fontSize: 30, fontFamily: "NotoSansLao"),
                                ),
                                Text(
                                  "ເດືອນ",
                                  style: TextStyle(
                                      fontSize: 30, fontFamily: "NotoSansLao"),
                                ),
                                Text(
                                  "ງວດວັນທີ",
                                  style: TextStyle(
                                      fontSize: 30, fontFamily: "NotoSansLao"),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Container(
                            // color: Colors.blueGrey,
                            // padding: EdgeInsets.only(left: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // CustomButtonWithCircle(text: "2019"),
                                      CustomButtonWithCircle(
                                        text: "2020",
                                        color: Colors.black12,
                                        press: () {},
                                      ),
                                      CustomButtonWithCircle(
                                        text: "2021",
                                        color: Colors.orangeAccent,
                                        press: () {},
                                      ),
                                      CustomButtonWithCircle(
                                        text: "2022",
                                        color: Colors.black12,
                                        press: () {},
                                      ),
                                      CustomButtonWithCircle(
                                        text: "2022",
                                        color: Colors.black12,
                                        press: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      CustomButtonWithCircle(
                                        text: "ມ.ກ",
                                        color: Colors.black12,
                                        press: () {},
                                      ),
                                      CustomButtonWithCircle(
                                        text: "ກ.ພ",
                                        color: Colors.orangeAccent,
                                        press: () {
                                          print("ກ.ພ");
                                        },
                                      ),
                                      CustomButtonWithCircle(
                                        text: "ມ.ນ",
                                        color: Colors.black12,
                                        press: () {},
                                      ),
                                      CustomButtonWithCircle(
                                        text: "ມ.ສ",
                                        color: Colors.orangeAccent,
                                        press: () {},
                                      ),
                                    ],
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      CustomButtonWithCircle(
                                        text: "12",
                                        color: Colors.black12,
                                        press: () {},
                                      ),
                                      CustomButtonWithCircle(
                                        text: "20",
                                        color: Colors.orangeAccent,
                                        press: () {},
                                      ),
                                      CustomButtonWithCircle(
                                        text: "27",
                                        color: Colors.black12,
                                        press: () {
                                          print("27");
                                        },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: MaterialButton(
                      onPressed: () {
                        print("pressed");
                      },
                      minWidth: 150,
                      height: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: Colors.orangeAccent,
                      child: Text(
                        "ຕົກລົງ",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
