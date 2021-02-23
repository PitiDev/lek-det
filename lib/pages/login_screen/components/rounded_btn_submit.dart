import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';
import 'package:lek_det/page/Lek_laos/Lek_laos.dart';

class RoundedBtnSubmit extends StatelessWidget {
  final Function press;
  const RoundedBtnSubmit({
    Key key, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(bottom: kDefaultPadding),
        alignment: Alignment.center,
        width: size.width * 0.3,
        height: 54,
        decoration: BoxDecoration(
          color: Colors.orangeAccent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
            topRight: Radius.circular(4),
            bottomLeft: Radius.circular(4),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 3),
              blurRadius: 5,
              color: kPrimaryColor.withOpacity(0.5),
            )
          ],
        ),
        child: Text("ຢືນຢັນ", style: TextStyle(fontSize: 20, fontFamily: "NotoSansLao"),),
      ),
    );
  }
}
