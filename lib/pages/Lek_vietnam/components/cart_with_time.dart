import 'package:flutter/material.dart';

class CartWithTime extends StatelessWidget {
  final String time;
  const CartWithTime({
    Key key, this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1, color: Colors.black45)),
      child: Center(
        child: Text(
          time,
          style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
