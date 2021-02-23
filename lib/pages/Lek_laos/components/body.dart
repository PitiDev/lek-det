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
    return Background(
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.04,
          ),
          Center(
            child: SearchBox(
              onChanged: (value) {},
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardWithLottery(),
                CardWithLottery(),
                CardWithLottery(),
                CardWithLottery(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

