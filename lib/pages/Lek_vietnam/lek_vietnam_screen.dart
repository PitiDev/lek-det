import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_vietnam//components/build_appbar.dart';
import 'components/body.dart';

class LekVietnam extends StatefulWidget {
  @override
  _LekVietnamState createState() => _LekVietnamState();
}

class _LekVietnamState extends State<LekVietnam> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body()
    );
  }
}

