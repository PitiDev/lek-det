import 'package:flutter/material.dart';

import '../../../style/constants.dart';

class RoundedInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key, this.onChanged,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "ຊື່ຜູ້ໃຊ້",
            hintStyle: TextStyle(fontFamily: "NotoSansLao"),
            border: InputBorder.none,
            icon: Icon(Icons.person, color: kPrimaryColor,)
        ),
      ),
    );
  }
}
