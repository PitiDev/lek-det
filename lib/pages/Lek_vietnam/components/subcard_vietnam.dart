import 'package:flutter/material.dart';
import 'package:lek_det/components/custom_divider.dart';
import 'package:lek_det/components/custom_number.dart';

import 'cart_with_time.dart';

class SubCardVietnam extends StatelessWidget {
  const SubCardVietnam({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        CartWithTime(time: "16:30"),
        SizedBox(
          height: 5,
        ),
        Text(
          "ເລກບົນ",
          style: TextStyle(fontSize: 30, fontFamily: "NotoSansLao"),
        ),
        SizedBox(
          height: 10,
        ),
        CustomNumber(
          digit: "553511",
          fontSize: 40,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "ເລກລ່າງ",
          style: TextStyle(fontSize: 30, fontFamily: "NotoSansLao"),
        ),
        SizedBox(
          height: 10,
        ),
        CustomNumber(
          digit: "553511",
          fontSize: 40,
        ),
        SizedBox(
          height: 10,
        ),
        MyDivider(0.1, 0.1, 1),
      ],
    );
  }
}
