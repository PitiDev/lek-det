import 'package:flutter/material.dart';

import 'body.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("my test"),
      ),
      body: Container(
        child: Column(
          children: [
            // Text("how are you today ?"),
            Expanded(child: ListView.builder(itemCount: 3,itemBuilder: (context, i) => myCard()))
          ],
        ),
      ),
    );
  }
}
