import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class RounedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RounedPasswordField({
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
        obscureText: true,
        decoration: InputDecoration(
            hintText: "ລະຫັດຜ່ານ",
            hintStyle: TextStyle(fontFamily: "NotoSansLao"),
            border: InputBorder.none,
            icon: Icon(Icons.lock, color: kPrimaryColor,)
        ),
      ),
    );
  }
}
