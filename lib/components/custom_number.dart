import 'package:flutter/material.dart';

class CustomNumber extends StatelessWidget {
  final String digit;
  final double fontSize;

  const CustomNumber({
    Key key,
    this.digit, this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            digit,
            style: TextStyle(
                fontSize: fontSize, fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
