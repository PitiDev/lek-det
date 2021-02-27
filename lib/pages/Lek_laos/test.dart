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
                  Container(
                    margin: pageChange == 0 ?
                    EdgeInsets.all(0) : EdgeInsets.all(10) ,
                    width: 300,
                    height: 300,
                    color: Colors.pink,
                    child: Column(
                      children: [
                        Text("hi"),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: pageChange == 1 ?
                    EdgeInsets.all(0) : EdgeInsets.all(10) ,
                    width: 300,
                    height: 300,
                    color: Colors.red,
                    child: Column(
                      children: [
                        Text("hi"),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: pageChange == 2 ?
                    EdgeInsets.all(0) : EdgeInsets.all(10) ,
                    width: 300,
                    height: 300,
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text("hi"),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: 50,),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white
                          ),
                        ),
                        Expanded(child: Container())
                      ],
                    ),
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
