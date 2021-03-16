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
          ]
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ຜົນອອກເລກ", style: TextStyle(fontSize: 30, fontFamily: "NotoSansLao"),),
            Text("ລາວ,ໄທ,ຫວຽດນາມ", style: TextStyle(fontSize: 16, fontFamily: "NotoSansLao", color: Colors.black45),),
          ],
        ),
      ),
    );
  }
}
