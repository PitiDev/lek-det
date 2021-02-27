import 'package:flutter/material.dart';

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  double width = 300;
  double height = 400;
  double changeX = 0;
  double rotateX = 0;
  double rotateY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("animate container"),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              transform: Matrix4.translationValues(changeX, 0, 0)..rotateX(rotateX)..rotateY(rotateY),
              duration: Duration(milliseconds: 250),
              width: width,
              height: height,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  height = height - 100;
                  width = width - 100;
                  changeX+=20;
                  rotateX+=0.3;
                  rotateY+=0.3;
                });
              },
              child: Text("in"),
              color: Colors.blueAccent,
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  height = height + 100;
                  width = width + 100;
                  changeX-=20;
                  rotateX-=0.3;
                  rotateY-=0.3;
                });
              },
              child: Text("out"),
              color: Colors.blueAccent,
            )
          ],
        ),
      ),
    );
  }
}
