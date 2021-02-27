import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/components/six_digit.dart';
import 'package:lek_det/pages/Lek_laos/components/title_animal.dart';
import 'package:lek_det/pages/Lek_laos/components/title_animal.dart';
import 'package:lek_det/style/constants.dart';

import 'card_number.dart';
import 'custom_divider.dart';
import 'icon_with_circle.dart';

class CardWithLottery extends StatelessWidget {
  final int pageNum;
  final int num;
  const CardWithLottery({
    Key key, this.pageNum, this.num,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.6,
      width: size.width * 0.8,
      margin: pageNum == num
          ? EdgeInsets.symmetric(
              vertical: kDefaultPadding, horizontal: kDefaultPadding)
          : EdgeInsets.symmetric(vertical: 0, horizontal: 0),
      decoration: BoxDecoration(
          // color: Color(0xFFF9F8FD),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0), blurRadius: 10, color: Colors.black38)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: size.height * 0.02),
          Container(
            child: CircleIcon(0.06, 0.055, 30),
          ),
          SizedBox(height: size.height * 0.001),
          CardNumber(size: size),
          SizedBox(height: size.height * 0.02),
          myDivider(0.25, 0.25, 1),
          SixDigit(),
          myDivider(0.20, 0.20, 1),
          TitleAnimal(),
          SizedBox(height: size.height * 0.01),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleIcon(0.031, 0.03, 20),
                CircleIcon(0.031, 0.03, 20),
                CircleIcon(0.031, 0.03, 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
