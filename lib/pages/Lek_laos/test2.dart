import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/components/card_laos.dart';

class Test1 extends StatefulWidget {
  @override
  _Test1State createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width,
                height: size.height * 0.6,
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: PageView(
              children: [
                CardLaos(
                ),
                CardLaos(),
                CardLaos(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
