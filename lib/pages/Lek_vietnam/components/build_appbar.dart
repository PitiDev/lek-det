import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

AppBar buildAppBar(BuildContext context){
  return AppBar(
    elevation: 0,
    title: Text(
      "ຜົນອອກເລກຫວຽດນາມ",
      style: TextStyle(
          fontFamily: 'NotoSansLao',
          fontWeight: FontWeight.w300,
          fontSize: 30),
    ),
    leading: IconButton(
      icon: Icon(Icons.chevron_left, size: 50,),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    backgroundColor: kPrimaryColor,
    // backgroundColor: Colors.red,
  );
}
