import 'package:flutter/material.dart';
import 'package:lek_det/pages/main_screen/components/card_bottom.dart';
import 'package:lek_det/style/constants.dart';

import 'card_left.dart';
import 'card_right.dart';
import 'frequently_card.dart';
import 'result.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Result(),
          Container(
            width: double.infinity,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: FrequentlyCard(),
                ),
                Expanded(
                  child: FrequentlyCard(),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.2,
            padding: EdgeInsets.only(left: 30, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: CardLeft(),
                  flex: 12,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: CardRight(),
                  flex: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CardBottom(),
        ],
      ),
    );
  }
}
