import 'package:flutter/material.dart';


class CustomButtonWithCircle extends StatelessWidget {
  final String text;
  final Color color;
  final Function press;
  const CustomButtonWithCircle({
    Key key,
    this.text, this.color, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 0),
      child: GestureDetector(
        onTap: press,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Text(
            text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
