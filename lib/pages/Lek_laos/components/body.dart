import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/components/card_with_lottery.dart';
import 'package:lek_det/pages/Lek_laos/components/page_view_indicator.dart';
import 'package:lek_det/pages/Lek_laos/components/search_box.dart';
import 'package:lek_det/style/constants.dart';

import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  var dates = ["20/2/2021", "21/2/2021", "22/2/2021", "23/2/2021"];
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
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (index) {
                    print('page changed: $index');
                    setState(() {
                      pageChange = index;
                    });
                  },
                  controller: pageController,
                  children: [
                    CardWithLottery(
                      pageChange: pageChange,
                      num: 0,
                    ),
                    CardWithLottery(
                      pageChange: pageChange,
                      num: 1,
                    ),
                    CardWithLottery(
                      pageChange: pageChange,
                      num: 2,
                    ),
                    CardWithLottery(
                      pageChange: pageChange,
                      num: 3,
                    ),
                  ],
                ),
                Positioned(
                  top: 250,
                  left: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 45,
                      color: Colors.black38.withOpacity(0.3),
                    ),
                    onPressed: () {
                      setState(() {
                        if (pageChange != 0) {
                          pageController.animateToPage(--pageChange,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceInOut);
                        }
                      });
                    },
                  ),
                ),
                Positioned(
                  top: 250,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 45,
                      color: Colors.black38.withOpacity(0.3),
                    ),
                    onPressed: () {
                      setState(() {
                        if (pageChange < dates.length - 1) {
                          pageController.animateToPage(++pageChange,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceInOut);
                        }
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          PageViewIndicator(size: size, dates: dates, pageChange: pageChange),
        ],
      ),
    );
  }
}

