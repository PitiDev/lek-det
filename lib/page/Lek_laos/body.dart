import 'dart:io';
import 'dart:core';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * 0.02),
            Container(
              child: Text(
                "21 ກຸມພາ 2021",
                style: TextStyle(fontSize: 18, fontFamily: "NotoSansLao light"),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              child: CircleIcon(0.11, 0.1, 30),
            ),
            SizedBox(height: size.height * 0.001),
            Container(
              width: size.width * 0.2,
              height: size.height * 0.06,
              child: Card(
                elevation: 5,
                child: Center(
                  child: Text(
                    "11",
                    style: TextStyle(
                        fontFamily: "NotoSansLao",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            myDivider(0.15, 0.15, 1),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("553511",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.red)),
                  Text("ເລກຫົກໂຕ",
                      style: TextStyle(fontSize: 20, fontFamily: "NotoSansLao"))
                ],
              ),
            ),
            myDivider(0.15, 0.15, 1),
            Container(
              child: Text(
                "ເລກນາມສັດ",
                style: TextStyle(fontSize: 25, fontFamily: "NotoSansLao"),
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleIcon(0.041, 0.04, 20),
                CircleIcon(0.041, 0.04, 20),
                CircleIcon(0.041, 0.04, 20),
              ],
            ),
            myDivider(0.04, 0.04, 0.5),
            Text("ຜົນເລກທີ່ຜ່ານມາ", style: TextStyle(fontSize: 20, fontFamily: 'NotoSansLao'),),
            Column(
              children:
                List.generate(10, (i) => myCard())
            )
          ],
        ),
      ],
    );
  }
}
Widget myCard(){
  return Column(
    children: [
      myDivider(0.02, 0.02, 0.4),
      ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage('https://www.clipartmax.com/png/middle/159-1598115_png-monkey-emoticon-12-cute-monkey-icon.png'),
        ),
        title: Text("553511"),
        subtitle: Text("ລີງ"),
        trailing: Text("21 ກຸມພາ 2021"),
      ),
    ],
  );
}

class myDivider extends StatelessWidget {
  final double _l;
  final double _r;
  final double _thickness;

  const myDivider(
    this._l,
    this._r,
    this._thickness, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Divider(
      color: Colors.brown,
      thickness: _thickness,
      height: 10,
      indent: size.width * _l,
      endIndent: size.width * _r,
    );
  }
}

class CircleIcon extends StatelessWidget {
  final double _out;
  final double _in;
  final double _textSize;

  const CircleIcon(
    this._out,
    this._in,
    this._textSize, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        CircleAvatar(
          radius: size.height * _out,
          backgroundColor: Color(0xFFb7c728),
          child: CircleAvatar(
            radius: size.height * _in,
            backgroundImage: NetworkImage(
                'https://thumbs.dreamstime.com/z/pet-dog-line-icon-outline-vector-sign-linear-pictogram-isolated-white-symbol-logo-illustration-89696806.jpg'),
          ),
        ),
        Text(
          "ໝາ",
          style: TextStyle(
              fontSize: _textSize,
              fontWeight: FontWeight.w300,
              fontFamily: 'NotoSansLao'),
        ),
      ],
    );
  }
}
