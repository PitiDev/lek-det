import 'package:flutter/material.dart';
import 'package:lek_det/pages/Xeingxok2/Componants/my_card.dart';
import 'package:lek_det/pages/Xeingxok2/xiengxok2.dart';
import 'package:lek_det/style/constants.dart';

class xiengxok2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Container(
                  height: size.height * 0.1,
                  width: double.infinity,
                  color: kPrimaryColor,
                  child: Center(
                    child: Text('ສ່ຽງໂຊກ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 85),
                height: size.height * 0.50, //0.40
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: Border.all(color: Colors.black26),
                ),
                child: Column(
                  children: [My_card()],
                ),
              )
            ],
          ),
          Container(
              height: size.height,
              width: double.infinity,
              color: Colors.black26,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 155, bottom: 110),
                    child: Column(
                      children: [
                        Text('ນີ້ແມ່ນເລກນຳ',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )),
                        Text('ໂຊກປະຈຳວັນຂອງທ່ານ!',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  SizedBox(height: 175),
                  FlatButton(
                      onPressed: () {},
                      child: Container(
                        width: size.width * 0.3,
                        height: size.height * 0.06,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          color: kPrimaryColor,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0,3),
                              color: Colors.grey,
                              blurRadius: (0.3),
                            )
                          ]
                        ),
                        alignment: Alignment.center,
                        child: Text('ຕົກລົງ',style: TextStyle(fontWeight: FontWeight.bold),),
                      )),
                ],
              )),
        ]),
      ),
    );
  }
}
