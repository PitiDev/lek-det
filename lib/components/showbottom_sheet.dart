import 'package:flutter/material.dart';
import 'package:lek_det/components/select_date.dart';
import 'package:lek_det/models/information_dates.dart';
import 'custom_button_circle.dart';

class ShowBottomSheet extends StatefulWidget {
   List<MyDate> years;
   List<MyDate> months;
   List<MyDate> dates;
   final Function getDate;

  ShowBottomSheet({this.years, this.months, this.dates, this.getDate});

  @override
  _ShowBottomSheetState createState() => _ShowBottomSheetState();
}

class _ShowBottomSheetState extends State<ShowBottomSheet> {
  String _day, _month, _year;

  void _submit(){
   widget.getDate(_day, _month, _year);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.40,
      color: Color(0xFF737373),
      child: Container(
          padding: EdgeInsets.only(top: 10, left: 30, bottom: 20, right: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.9,
                height: size.height * 0.25,
                // color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        // color: Colors.red,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "ປະຈໍາປີ",
                              style: TextStyle(
                                  fontSize: 30, fontFamily: "NotoSansLao"),
                            ),
                            Text(
                              "ເດືອນ",
                              style: TextStyle(
                                  fontSize: 30, fontFamily: "NotoSansLao"),
                            ),
                            Text(
                              "ງວດວັນທີ",
                              style: TextStyle(
                                  fontSize: 30, fontFamily: "NotoSansLao"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Container(
                        // color: Colors.blueGrey,
                        // padding: EdgeInsets.only(left: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ...widget.years.map((data) {
                                return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        widget.years.forEach((element) {
                                          data == element
                                              ? element.isSelected = true
                                              : element.isSelected = false;
                                          _year = data.text;
                                        });
                                      });
                                    },
                                    child: CircleAnswer(data));
                              }),
                            ],
                          ),
                        ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ...widget.months.map((data) {
                                    return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            widget.months.forEach((element) {
                                              data == element
                                                  ? element.isSelected = true
                                                  : element.isSelected = false;
                                              _month = data.text;
                                            });
                                          });
                                        },
                                        child: CircleAnswer(data));
                                  }),
                                ],
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ...widget.dates.map((data) {
                                    return GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            widget.dates.forEach((element) {
                                              data == element
                                                  ? element.isSelected = true
                                                  : element.isSelected = false;
                                              _day = data.text;
                                            });
                                          });
                                        },
                                        child: CircleAnswer(data));
                                  }),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(right: 30),
                child: MaterialButton(
                  onPressed: (){
                    // print(_day);
                    // print(_month);
                    // print(_year);
                    Navigator.of(context).pop();
                    return _submit();
                  },
                  minWidth: 150,
                  height: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.orangeAccent,
                  child: Text(
                    "ຕົກລົງ",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          )),
    );
  }

}
