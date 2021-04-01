import 'package:flutter/material.dart';
import 'package:lek_det/components/custom_divider.dart';
import 'package:lek_det/components/custom_number.dart';
import 'package:lek_det/components/custom_number.dart';
import 'package:lek_det/pages/Lek_vietnam/components/subcard_vietnam.dart';
import 'package:lek_det/style/constants.dart';

import 'cart_with_time.dart';

class CardVietnam extends StatefulWidget {
  final String award_1, award_2, award_3;
  final int pageChange, num;

  const CardVietnam({
    Key key,
    this.award_1,
    this.award_2,
    this.award_3,
    this.pageChange,
    this.num,
  }) : super(key: key);

  @override
  _CardVietnamState createState() => _CardVietnamState();
}

class _CardVietnamState extends State<CardVietnam> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      width: size.width * 0.8,
      margin: widget.pageChange == widget.num
          ? EdgeInsets.symmetric(vertical: 5, horizontal: 0)
          : EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
          // color: Color(0xFFF9F8FD),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0), blurRadius: 10, color: Colors.black38)
          ]),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            SubCardVietnam(),
                            SubCardVietnam(),
                            SubCardVietnam(),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 20,
                      child: Transform.rotate(
                        angle: -1.6,
                        child: Icon(Icons.arrow_back_ios, color: Colors.black45,),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/icons/vietnam.png"),
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
