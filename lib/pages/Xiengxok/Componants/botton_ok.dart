import 'package:flutter/material.dart';

class Botton_ok extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFFFE082),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  spreadRadius: 1,
                  offset: Offset(0,1),
                ),
              ]
          ),
          height: size.height * 0.06,
          width: size.width * 0.35,
          // height: 45,
          // width: 150,
          child: Center(
              child: Text(
            'ຕົກລົງ',
            style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
