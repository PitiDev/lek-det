import 'package:flutter/material.dart';

class SixDigit extends StatelessWidget {
  const SixDigit({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("553511",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red)),
          Text("ເລກຫົກໂຕ",
              style: TextStyle(fontSize: 20, fontFamily: "NotoSansLao"))
        ],
      ),
    );
  }
}
