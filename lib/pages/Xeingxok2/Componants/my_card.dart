import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Stack(
      children: [Container(
        margin: EdgeInsets.only(top: 60,left: 20,right: 20),
        height: size.height*0.37, //250
        width: size.width*0.75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Colors.black26),
          color: Colors.purple,
            boxShadow: [
              BoxShadow(
                offset: Offset(0,0),
              )
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
                image: NetworkImage('https://imagesvc.meredithcorp.io/v3/jumpstartpure/image?url=https://cf-images.us-east-1.prod.boltdns.net/v1/static/5978871887001/57ce6a95-2c27-4a24-bef7-4f7c8bc1e81d/d42b071f-70e9-4ee2-b321-87e084cf18d2/1280x720/match/image.jpg&w=1280&h=720&q=90&c=cc ')),
            ),
      ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 230,
          child: Text('888',
              style: TextStyle(
                fontSize: 70,
                color: Colors.white,
              )),
        ),
      ]
    );
  }
}
