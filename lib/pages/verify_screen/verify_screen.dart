import 'package:flutter/material.dart';
import 'package:lek_det/components/card_number_textfield.dart';
import 'package:lek_det/components/forget_password.dart';

class VerifyScreen extends StatefulWidget {
  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  String _input1, _input2, _input3, _input4;
  List<String> totalInput = [];

  final _formKey = GlobalKey<FormState>();

  void _saveValue1(String value) {
    _input1 = value;
  }

  void _saveValue2(String value) {
    _input2 = value;
  }

  void _saveValue3(String value) {
    _input3 = value;
  }

  void _saveValue4(String value) {
    _input4 = value;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: size.height * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "ກະລຸນາປ້ອນລະຫັດ OTP",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "NotoSansLao",
                        color: Colors.black45),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Form(
                      key: _formKey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CardNumberTextField(
                            press: _saveValue1,
                          ),
                          CardNumberTextField(
                            press: _saveValue2,
                          ),
                          CardNumberTextField(
                            press: _saveValue3,
                          ),
                          CardNumberTextField(
                            press: _saveValue4,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      _formKey.currentState.save();
                      setState(() {
                        totalInput = [];
                        // totalInput.add(_input1);
                        // totalInput.add(_input2);
                        // totalInput.add(_input3);
                        // totalInput.add(_input4);
                      });
                      // _formKey.currentState.reset();
                    },
                    child: Container(
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "ຢືນຢັນ",
                          style: TextStyle(
                              fontSize: 25,
                              fontFamily: "NotoSansLao",
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ForgetPassword(
                    detailText: "ຂໍ້ຄວາມຍັງບໍ່ສົ່ງ? ",
                    text: "ກົດທີ່ນີ້ເພື່ອສົ່ງໃໝ່",
                    press: () {
                      print("ສົ່ງໃໝ່..");
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Text("OTP = ${totalInput[0]}${totalInput[1]}${totalInput[2]}${totalInput[3]}", style: TextStyle(fontSize: 30),),
                ],
              ),
            )),
      ),
    );
  }
}

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(color: Colors.orangeAccent),
      child: Stack(
        children: [
          Positioned(
            child: Image.network(
                "https://i.pinimg.com/564x/14/c4/70/14c470ca5da7dc329fb1802237f422fc.jpg"),
          ),
          Positioned.fill(
            top: 50,
            child: Align(
              alignment: Alignment.topCenter,
              child: Text(
                "ກະລຸນາຢືນຢັນໂຕຕົນ",
                style: TextStyle(fontSize: 25, fontFamily: "NotoSansLao"),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
