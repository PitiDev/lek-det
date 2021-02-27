import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/components/card_with_lottery.dart';
import 'package:lek_det/pages/Lek_laos/components/search_box.dart';
import 'package:lek_det/style/constants.dart';

import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int pageChange = 0;
    var dates = ["20/2/2021", "21/2/2021", "22/2/2021"];

    PageController pageController =
        PageController(initialPage: 0, viewportFraction: 0.7);

    return Background(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.04,
          ),
          Center(
            child: SearchBox(
              onChanged: (value) {},
              date: dates[pageChange],
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          SizedBox(
            width: size.width,
            height: size.height * 0.6,
            child: PageView(
              onPageChanged: (index){
                setState(() {
                  pageChange = index;
                });
                print("$pageChange");
              },
              controller: pageController,
              children: [
                CardWithLottery(
                  pageChagne: pageChange,
                  num: 0,
                ),
                CardWithLottery(
                  pageChagne: pageChange,
                  num: 1,
                ),
                CardWithLottery(
                  pageChagne: pageChange,
                  num: 2,
                ),
                CardWithLottery(
                  pageChagne: pageChange,
                  num: 3,
                ),
              ],
            ),
          )
          // SingleChildScrollView(
          //   child: CardWithLottery(),
          // )
        ],
      ),
    );
  }
}
