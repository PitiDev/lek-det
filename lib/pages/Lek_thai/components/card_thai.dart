import 'package:flutter/material.dart';
import 'package:lek_det/components/custom_divider.dart';
import 'package:lek_det/components/custom_number.dart';
import 'package:lek_det/style/constants.dart';

class CardThai extends StatefulWidget {
  final String award_1, award_2, award_3;
  final int pageChange, num;
  const CardThai({
    Key key, this.award_1, this.award_2, this.award_3, this.pageChange, this.num,
  }) : super(key: key);

  @override
  _CardThaiState createState() => _CardThaiState();
}

class _CardThaiState extends State<CardThai> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.65,
      width: size.width * 0.8,
      margin: widget.pageChange == widget.num
          ? EdgeInsets.symmetric(vertical: 5, horizontal: 0)
          : EdgeInsets.symmetric(
              vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        // color: Color(0xFFF9F8FD),
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 10,
                color: Colors.black38)
          ]),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text("ລາງວັນທີ່ໜຶ່ງ", style: TextStyle(fontSize: 25, fontFamily: "NotoSansLao"),),
                    CustomNumber(digit: widget.award_1, fontSize: 40,),
                    Text("ລາງວັນລະ 6.000.000 ບາດ", style: TextStyle(fontSize: 15, fontFamily: "NotoSansLao", color: Colors.black45),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("ເລກໜ້າ 3 ໂຕ", style: TextStyle(fontSize:23, fontFamily: "NotoSansLao"),),
                            CustomNumber(digit: "511", fontSize: 30,),
                            CustomNumber(digit: "511", fontSize: 30,),
                            Text("ລາງວັນລະ 4.000 ບາດ", style: TextStyle(fontSize: 15, fontFamily: "NotoSansLao", color: Colors.black45),),
                          ],
                        ),
                        Column(
                          children: [
                            Text("ເລກທ້າຍ 3 ໂຕ", style: TextStyle(fontSize:23, fontFamily: "NotoSansLao"),),
                            CustomNumber(digit: "511", fontSize: 30,),
                            CustomNumber(digit: "511", fontSize: 30,),
                            Text("ລາງວັນລະ 4.000 ບາດ", style: TextStyle(fontSize: 15, fontFamily: "NotoSansLao", color: Colors.black45),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text("ເລກທ້າຍ 2 ໂຕ", style: TextStyle(fontSize: 20, fontFamily: "NotoSansLao"),),
                    CustomNumber(digit: "53", fontSize: 30,),
                    Text("ລາງວັນລະ 2.000 ບາດ", style: TextStyle(fontSize: 15, fontFamily: "NotoSansLao", color: Colors.black45),),
                    SizedBox(height: 5,),
                    MyDivider(0.10, 0.10, 1),
                    SizedBox(height: 10,),
                    Text("ລາງວັນໃກ້ຄຽງລາງວັນທີ 1", style: TextStyle(fontFamily: "NotoSansLao", fontSize: 15),),
                    Text("2 ລາງວັນ ລາງວັນລະ 6.000.000 ບາດ", style: TextStyle(fontSize: 15, fontFamily: "NotoSansLao", color: Colors.black45),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomNumber(digit: widget.award_2, fontSize: 25,),
                        CustomNumber(digit: widget.award_3, fontSize: 25,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    MyDivider(0.08, 0.08, 1),
                    Text("ລາງວັນທີ2", style: TextStyle(fontSize: 18, fontFamily: "NotoSansLao"),),
                    Text("5 ລາງວັນ ລາງວັນລະ 200.000 ບາດ", style: TextStyle(fontSize: 15, fontFamily: "NotoSansLao", color: Colors.black45),),

                  ],
                ),
                Positioned(
                  top: 15,
                  left: 15,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("assets/icons/thai.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
