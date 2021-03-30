import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_thai/components/build_appbar.dart';
import 'components/body.dart';

class LekThai extends StatefulWidget {
  @override
  _LekThaiState createState() => _LekThaiState();
}

class _LekThaiState extends State<LekThai> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body()
    );
  }
}

