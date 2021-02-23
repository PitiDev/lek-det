import 'package:flutter/material.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.2,
      height: size.height * 0.06,
      child: Card(
        elevation: 5,
        child: Center(
          child: Text(
            "11",
            style: TextStyle(
                fontFamily: "NotoSansLao",
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
