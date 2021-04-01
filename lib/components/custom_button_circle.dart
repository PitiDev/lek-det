import 'package:flutter/material.dart';


class CustomButtonWithCircle extends StatefulWidget {
  final String text;
  final Function press;
  final bool changeColor;
  const CustomButtonWithCircle({
    Key key,
    this.text, this.press, this.changeColor,
  }) : super(key: key);

  @override
  _CustomButtonWithCircleState createState() => _CustomButtonWithCircleState();
}

class _CustomButtonWithCircleState extends State<CustomButtonWithCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 0),
      child: GestureDetector(
        onTap: widget.press,
        child: CircleAvatar(
          radius: 30,
          backgroundColor: widget.changeColor ? Colors.orangeAccent : Colors.black12,
          child: Text(
            widget.text,
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
