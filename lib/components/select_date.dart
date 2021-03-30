import 'package:flutter/material.dart';
import 'package:lek_det/models/information_dates.dart';

class CircleAnswer extends StatelessWidget {
  final MyDate _item;

  CircleAnswer(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: _item.isSelected ? Colors.orangeAccent : Colors.black12,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          _item.buttonText,
          style: TextStyle(fontSize: 20, color: _item.isSelected ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
