import 'package:flutter/material.dart';

class TitleAnimal extends StatelessWidget {
  const TitleAnimal({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "ເລກນາມສັດ",
        style: TextStyle(fontSize: 25, fontFamily: "NotoSansLao"),
      ),
    );
  }
}
