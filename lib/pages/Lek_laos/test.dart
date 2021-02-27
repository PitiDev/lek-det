import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 0.7);
  int pageChange = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View"),
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                pageController.animateToPage(--pageChange,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.bounceInOut);
              }),
          IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: () {
                pageController.animateToPage(++pageChange,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.bounceInOut);
              }),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: (index) {
                setState(() {
                  pageChange = index;
                });
                print(pageChange);
              },
              pageSnapping: true,
              controller: pageController,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: pageChange == 0
                      ? EdgeInsets.all(0)
                      : EdgeInsets.all(16),
                  color: Colors.red,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: pageChange == 1
                      ? EdgeInsets.all(0)
                      : EdgeInsets.all(16),
                  color: Colors.green,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: pageChange == 2
                      ? EdgeInsets.all(0)
                      : EdgeInsets.all(16),
                  color: Colors.blue,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  margin: pageChange == 3
                      ? EdgeInsets.all(0)
                      : EdgeInsets.all(16),
                  color: Colors.pink,
                ),

              ],
            ),
          ),
          Expanded(
              child: Container(
            child: Center(
              child: Text(
                "$pageChange",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
