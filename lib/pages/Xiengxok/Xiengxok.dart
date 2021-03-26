import 'package:flutter/material.dart';
import 'package:lek_det/pages/Xiengxok/Componants/botton_ok.dart';
import 'package:lek_det/pages/Xiengxok/Componants/box_number.dart';
import 'package:lek_det/style/constants.dart';

class xiengxok extends StatefulWidget {
  @override
  _xiengxokState createState() => _xiengxokState();
}

class _xiengxokState extends State<xiengxok> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        color: kPrimaryColor,
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
                child: Text('ສ່ຽງໂຊກ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            Container(
              margin: EdgeInsets.symmetric(vertical: 85),
              width: size.width*0.8,
              height: size.height*0.50, //0.43
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30),
                  ),
                  border: Border.all(color:Colors.black26),
                  color: Colors.white
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    Text('ເລກນຳໂຊກປະຈຳວັນ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                    Container(
                      margin: EdgeInsets.only(top: 10,bottom: 25),
                      child: Text('ກະລຸນາປ້ອນ ວ.ດ.ປ ເກີດຂອງທ່ານ',style: TextStyle(color: Colors.grey)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Box_number(),
                        Box_number(),
                        Box_number(),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: Botton_ok(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
