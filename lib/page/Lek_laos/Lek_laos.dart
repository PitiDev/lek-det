import 'package:flutter/material.dart';
import 'package:lek_det/page/Lek_laos/body.dart';

class LekLaos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ຜົນອອກເລກລາວ",
          style: TextStyle(
              fontFamily: 'NotoSansLao',
              fontWeight: FontWeight.w300,
              fontSize: 30),
        ),
        leading: IconButton(
          icon: Icon(Icons.chevron_left, size: 50,),
          onPressed: (){
           print("chevron pressed");
          },
        ),
        backgroundColor: Color(0xFFb7c728),
        // backgroundColor: Colors.red,
      ),
      body: Body(),
    );
  }
}
