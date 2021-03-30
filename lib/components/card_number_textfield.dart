import 'package:flutter/material.dart';

class CardNumberTextField extends StatelessWidget {
  final Function press;

  const CardNumberTextField({this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.black45.withOpacity(0.2),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 0,
            blurRadius: 1.0,
            offset: Offset(3.5, 3.5),
          ),
        ],
      ),
      child: Center(
          child: TextFormField(
        onSaved: press,
        // maxLength: 1,
        decoration: InputDecoration(
          hintText: "_",
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
          border: InputBorder.none,
        ),
        textAlign: TextAlign.center,
      )),
    );
  }
}
