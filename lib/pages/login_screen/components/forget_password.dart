import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class ForgetPassword extends StatelessWidget {
  final Function press;

  const ForgetPassword({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "ລືມລະຫັດຜ່ານ? ",
          style: TextStyle(fontFamily: "NotoSansLao"),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            "ກົດທີ່ນີ້",
            style: TextStyle(fontFamily: "NotoSansLao", color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
