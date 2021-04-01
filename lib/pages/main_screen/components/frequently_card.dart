import 'package:flutter/material.dart';

class FrequentlyCard extends StatelessWidget {
  const FrequentlyCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 20, top: 10, bottom: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(20),
            ),

          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "ເລກທີ່ມັກອອກ\n",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontFamily: "NotoSansLao"),
                ),
                TextSpan(
                  text: "ໂຮມສະຖິຕິເລກທີ່ມັກອອກ",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black45,
                      fontFamily: "NotoSansLao"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
