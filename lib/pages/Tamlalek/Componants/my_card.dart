import 'package:flutter/material.dart';
import 'card_number.dart';

class My_card extends StatelessWidget {
  final String image, name, num1, num2, num3;

  My_card({@required this.image, this.name, this.num1, this.num2, this.num3});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 190,
      margin: EdgeInsets.only(bottom:20 ,left: 15,right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              // blurRadius: 10,
              // color: Colors.black12
            )
          ]
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(image),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CardNumber(number: num1),
              CardNumber(number: num2),
              CardNumber(number: num3),
            ],
          )
        ],
      ),
    );
  }
}
