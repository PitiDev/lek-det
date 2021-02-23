import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget {
  final double _out;
  final double _in;
  final double _textSize;

  const CircleIcon(
      this._out,
      this._in,
      this._textSize, {
        Key key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        CircleAvatar(
          radius: size.height * _out,
          backgroundColor: Color(0xFFb7c728),
          child: CircleAvatar(
            radius: size.height * _in,
            backgroundImage: AssetImage('assets/images/dog.png'),
          ),
        ),
        Text(
          "ໝາ",
          style: TextStyle(
              fontSize: _textSize,
              fontWeight: FontWeight.w300,
              fontFamily: 'NotoSansLao'),
        ),
      ],
    );
  }
}
