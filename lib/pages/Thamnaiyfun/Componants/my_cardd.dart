import 'package:flutter/material.dart';
import 'package:lek_det/pages/Thamnaiyfun/Componants/data2.dart';
class My_cardd extends StatelessWidget {

  final String name,num,num1,num2,num3,num4,num5;
  My_cardd({@required this.name,this.num,this.num1,this.num2,this.num3,this.num4,this.num5});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      margin: EdgeInsets.only(bottom:20 ,left: 15,right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              // blurRadius: 2,
               color: Colors.black
            ),
          ]
      ),
      child:Column(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    name,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18),
          Container(
            child: Text('ເລກນຳໂຊກ', style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(num,style: TextStyle(fontSize: 24,color: Colors.orange ),),
              Text(num1,style: TextStyle(fontSize: 24,color: Colors.orange ),),
              Text(num2,style: TextStyle(fontSize: 24,color: Colors.orange ),),
              Text(num3,style: TextStyle(fontSize: 24,color: Colors.orange ),),
              Text(num4,style: TextStyle(fontSize: 24,color: Colors.orange ),),
              Text(num5,style: TextStyle(fontSize: 24,color: Colors.orange ),),
            ],
          )
        ],
      ),
    );
  }
}

