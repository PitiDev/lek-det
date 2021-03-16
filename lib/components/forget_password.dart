import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class ForgetPassword extends StatelessWidget {
  final Function press;
  final String detailText;
  final String text;
  const ForgetPassword({
    Key key,
    this.press, this.detailText, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          detailText,
          style: TextStyle(fontFamily: "NotoSansLao"),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            text,
            style: TextStyle(fontFamily: "NotoSansLao", color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
