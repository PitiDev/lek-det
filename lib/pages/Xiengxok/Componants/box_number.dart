import 'package:flutter/material.dart';

class Box_number extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Container(
        width: size.width*0.2,
        height: size.height*0.06,
      decoration:BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(
          width: 1,
          color: Colors.black26,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26.withOpacity(0.2),
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: 0,
            offset: Offset(3.5,3.5),
          ),
        ]
      ),
      child: Center(
        child: Text("45",style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
