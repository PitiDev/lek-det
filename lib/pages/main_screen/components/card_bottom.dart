import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class CardBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          width: size.width * 0.85,
          height: size.height * 0.18,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: Colors.black45,
                blurRadius: 3,
              ),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ໝໍເລກ",
                  style: TextStyle(fontSize: 30, fontFamily: "NotoSansLao"),
                ),
                Text(
                  "ຕິດຕໍ່ໝໍໃຫ້ເລກເດັດ",
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "NotoSansLao",
                      color: Colors.black45),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            margin: EdgeInsets.only(right: 20, top: 10),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red,
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Center(
                  child: Text(
                    "PRO",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
