import 'package:flutter/material.dart';
import 'package:lek_det/pages/Thamnaiyfun/Componants/search_box.dart';
import 'package:lek_det/pages/Thamnaiyfun/Componants/data2.dart';
import 'package:lek_det/pages/Thamnaiyfun/Componants/my_cardd.dart';
import 'package:lek_det/style/constants.dart';

class Thamnaiyfun extends StatefulWidget {
  @override
  _ThamnaiyfunState createState() => _ThamnaiyfunState();
}

class _ThamnaiyfunState extends State<Thamnaiyfun> {

  final List<Data2> data2 = [
    Data2(name: 'ທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນ',num:'12',num2:'52',num1: '11',num3: '15',num4: '54',num5: '24'),
    Data2(name: 'ທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນ',num:'412',num2:'52',num1: '11',num3: '15',num4: '554',num5: '74'),
    Data2(name: 'ທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນ',num:'125',num2:'52',num1: '11',num3: '15',num4: '54',num5: '24'),
    Data2(name: 'ທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນທຳນາຍຝັນ',num:'112',num2:'52',num1: '11',num3: '15',num4: '54',num5: '24'),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Search_box(),
            SizedBox(height: 10),
            Container(
              height: 600,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: data2.length,
                  itemBuilder: (context, index) {
                    return My_cardd(
                      name: data2[index].name,
                      num: data2[index].num,
                      num1: data2[index].num1,
                      num2: data2[index].num2,
                      num3: data2[index].num3,
                      num4: data2[index].num4,
                      num5: data2[index].num5,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
