import 'package:flutter/material.dart';
import 'package:lek_det/pages/Ponaoglek/Componants/Img_name.dart';
import 'package:lek_det/pages/Ponaoglek/Componants/My_card.dart';
import 'package:lek_det/style/constants.dart';

class ponaoglek extends StatefulWidget {
  @override
  _ponaoglekState createState() => _ponaoglekState();
}

class _ponaoglekState extends State<ponaoglek> {
  final List<Img_name> data = [
    Img_name(image: "assets/images/dog.png", name: "ko"),
    Img_name(image: "assets/images/dog.png", name: "ko"),
    Img_name(image: "assets/images/dog.png", name: "ko"),
    Img_name(image: "assets/images/dog.png", name: "ko"),
    Img_name(image: "assets/images/dog.png", name: "ko"),
    Img_name(image: "assets/images/dog.png", name: "ko"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 414,
            height: 99,
            alignment: Alignment.center,
            color: kPrimaryColor,
            padding: EdgeInsets.only(top: 50, bottom: 10, left: 20, right: 20),
            child: Text(
              'ຜົນອອກເລກ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
        Column(
          children: [
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Container(
                  width: 280,
                  height: 170,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 30,bottom: 15),
                          height: 70,
                          width: 132,
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Laos.svg/1200px-Flag_of_Laos.svg.png")),
                      Text('ຜົນອອກເລກ',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Container(
                  width: 280,
                  height: 170,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 30,bottom: 15),
                          height: 70,
                          width: 132,
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Laos.svg/1200px-Flag_of_Laos.svg.png")),
                      Text('ຜົນອອກເລກ',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Container(
                  width: 280,
                  height: 170,
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 30,bottom: 15),
                          height: 70,
                          width: 132,
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Flag_of_Laos.svg/1200px-Flag_of_Laos.svg.png")),
                      Text('ຜົນອອກເລກ',style: TextStyle(fontSize: 16,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
        ],
      ),
    );
  }
}
