import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class CardRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          bottomLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            color: Colors.black45,
            blurRadius: 2,
          ),
        ],
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "ທຳນາຍຝັນ\n",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontFamily: "NotoSansLao"),
              ),
              TextSpan(
                text: "ມາທຳນາຍຝັນກັນເທາະ!",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                    fontFamily: "NotoSansLao"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
