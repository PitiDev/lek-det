import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  final String number;

  const CardNumber({
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.2),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 0,
            blurRadius: 1.0,
            offset: Offset(3.5, 3.5),
          ),
        ],
      ),
      child: Center(
        child: Text(
          number,
          style: TextStyle(
              fontFamily: "NotoSansLao",
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
