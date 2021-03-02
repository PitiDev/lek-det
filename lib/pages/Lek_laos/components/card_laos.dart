import 'package:flutter/material.dart';
import 'package:lek_det/components/custom_number.dart';
import 'package:lek_det/pages/Lek_laos/components/title_animal.dart';
import 'package:lek_det/pages/Lek_laos/components/title_animal.dart';
import 'package:lek_det/style/constants.dart';

import 'card_number.dart';
import '../../../components/custom_divider.dart';
import 'icon_with_circle.dart';

class CardLaos extends StatefulWidget {
  final int pageChange;
  final int num;
  final String two_digit, six_digit;

  const CardLaos({
    Key key,
    this.pageChange,
    this.num, this.two_digit, this.six_digit,
  }) : super(key: key);

  @override
  _CardLaosState createState() => _CardLaosState();
}

class _CardLaosState extends State<CardLaos> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      width: size.width * 0.8,
      margin: widget.pageChange == widget.num
          ? EdgeInsets.symmetric(vertical: 5, horizontal: 0)
          : EdgeInsets.symmetric(
              vertical: kDefaultPadding, horizontal: kDefaultPadding),
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
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(height: size.height * 0.04),
                    Container(
                      child: CircleIcon(0.06, 0.055, 30),
                    ),
                    SizedBox(height: size.height * 0.001),
                    CardNumber(size: size, number: widget.two_digit,),
                    SizedBox(height: size.height * 0.02),
                    MyDivider(0.25, 0.25, 1),
                    CustomNumber(
                      digit: widget.six_digit,
                    ),
                    Text(
                      "ເລກຫົກໂຕ",
                      style: TextStyle(fontSize: 20, fontFamily: "NotoSansLao"),
                    ),
                    MyDivider(0.20, 0.20, 1),
                    TitleAnimal(text: "ເລກນາມສັດ",),
                    SizedBox(height: size.height * 0.01),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
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
                Positioned(
                  top: 15,
                  left: 15,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/icons/laos.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
