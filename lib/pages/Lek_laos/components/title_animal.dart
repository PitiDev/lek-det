import 'package:flutter/material.dart';

class TitleAnimal extends StatelessWidget {
  final String text;
  const TitleAnimal({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 25, fontFamily: "NotoSansLao"),
      ),
    );
  }
}
