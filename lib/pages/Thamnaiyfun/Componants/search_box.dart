import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class Search_box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.23, //0.19
      height: 174,
      width: double.infinity,
      color: kPrimaryColor,
      child: Column(
        children: [
          SizedBox(height: 50),
          Text('ທຳນາຍຝັນ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            height: 50, //45
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.all(Radius.circular(8.51)),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8.51)),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Icon(Icons.search, size: 50,color: Color(0xFFCCC8C8)),
                ),
                hintText: 'ຄົ້ນຫາຄວາມຝັນ',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
