import 'package:flutter/material.dart';

class myDivider extends StatelessWidget {
  final double _l;
  final double _r;
  final double _thickness;

  const myDivider(
      this._l,
      this._r,
      this._thickness, {
        Key key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Divider(
      color: Colors.brown,
      thickness: _thickness,
      height: 10,
      indent: size.width * _l,
      endIndent: size.width * _r,
    );
  }
}
