import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  final String number;
  const CardNumber({
    Key key,
    this.number
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.12,   //0.2
      height: size.height * 0.06, //0.06
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            width: 1,
            color: Colors.black26
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.3),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
              fontFamily: "NotoSansLao",
              fontSize: 22,
              fontWeight: FontWeight.bold,
          color: Colors.orange),
        ),
      ),
    );
  }
}