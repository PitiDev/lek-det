import 'package:flutter/material.dart';
import 'package:lek_det/page/Lek_laos/Lek_laos.dart';
import 'package:lek_det/page/lek_laos2/lek_laos.dart';
import 'package:lek_det/page/login_screen/components/background.dart';
import 'package:lek_det/style/constants.dart';
import 'package:lek_det/page/login_screen/components/rounded_btn_submit.dart';
import 'package:lek_det/page/login_screen/components/rounded_input_field.dart';
import 'package:lek_det/page/login_screen/components/rounded_password_field.dart';
import 'card_custom_radius.dart';
import 'forget_password.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: CardCustomRadius(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Text(
              "ເຂົ້າສູ່ລະບົບ",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: "NotoSansLao",
                  fontWeight: FontWeight.w500),
            ),
            RoundedInputField(
              onChanged: (value) {},
            ),
            RounedPasswordField(
              onChanged: (value) {},
            ),
            RoundedBtnSubmit(
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LekLaos()));
              },
            ),
            ForgetPassword(
              press: (){},
            )
          ],
        ),
      ),
    );
  }
}

