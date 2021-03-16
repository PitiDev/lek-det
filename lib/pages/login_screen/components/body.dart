import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/lek_laos_screen.dart';
import 'package:lek_det/pages/login_screen/components/background.dart';
import 'package:lek_det/style/constants.dart';
import 'package:lek_det/pages/login_screen/components/rounded_btn_submit.dart';
import 'package:lek_det/pages/login_screen/components/rounded_input_field.dart';
import 'package:lek_det/pages/login_screen/components/rounded_password_field.dart';
import 'card_custom_radius.dart';
import '../../../components/forget_password.dart';

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
              detailText: "ລືມລະຫັດຜ່ານ? ",
              text: "ກົດທີ່ນີ້",
              press: (){},
            )
          ],
        ),
      ),
    );
  }
}

