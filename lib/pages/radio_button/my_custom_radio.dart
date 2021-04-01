import 'package:flutter/material.dart';

class MyCustomRadio extends StatefulWidget {
  @override
  _MyCustomRadioState createState() => _MyCustomRadioState();
}

class _MyCustomRadioState extends State<MyCustomRadio> {
  List<MyRadio> MyData = [];

  void initState() {
    super.initState();
    MyData.add(MyRadio(isChange: false, year: "2020"));
    MyData.add(MyRadio(isChange: false, year: "2021"));
    MyData.add(MyRadio(isChange: false, year: "2022"));
    MyData.add(MyRadio(isChange: false, year: "2023"));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...MyData.map((data) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          MyData.forEach((element) {
                            if (element == data) {
                              element.isChange = true;
                            } else {
                              element.isChange = false;
                            }
                          });
                        });
                      },
                      child: MyAnswer(data),
                    );
                  }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyAnswer extends StatelessWidget {
  final MyRadio _item;

  MyAnswer(this._item);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: _item.isChange ? Colors.blue : Colors.white,
        border: Border.all(width: 1),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          _item.year,
          style: TextStyle(fontSize: 20, color: _item.isChange ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}

class MyRadio {
  bool isChange;
  String year;

  MyRadio({this.isChange, this.year});
}
