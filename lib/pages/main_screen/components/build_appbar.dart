import 'package:flutter/material.dart';

Widget buildAppbar(){
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        size: 35,
      ),
      onPressed: (){},
    ),
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        icon: Icon(
          Icons.person_outline,
          size: 35,
        ),
        onPressed: () {},
      ),
    ],
  );
}
