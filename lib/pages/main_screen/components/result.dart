import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: size.width * 0.85,
      height: size.height * 0.18,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              color: Colors.black45,
              blurRadius: 3,
            ),
          ]),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ຜົນອອກເລກ",
              style: TextStyle(fontSize: 30, fontFamily: "NotoSansLao"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/lek-lao');
                  },
                  child: Text(
                    "ລາວ",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "NotoSansLao",
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/lek-thai');
                  },
                  child: Text(
                    "ໄທ",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "NotoSansLao",
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/lek-vietnam');
                  },
                  child: Text(
                    "ຫວຽດນາມ",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "NotoSansLao",
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
