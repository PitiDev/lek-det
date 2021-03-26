import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class My_search extends StatefulWidget {
  @override
  _My_searchState createState() => _My_searchState();
}

class _My_searchState extends State<My_search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 174,
      color: kPrimaryColor,
      child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            child: Text("ຕຳລາເລກ",style: TextStyle(fontSize: 28),),
          ),
          Container(
            height: 45,
            width: double.infinity,
            margin: EdgeInsets.only(left: 30,right: 30,top: 30,bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
            ),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10,left: 5),
                  child: Icon(Icons.search,size: 50,color: Colors.grey),
                ),
                hintText: ('ຄົ້ນຫານາມສັດ'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
