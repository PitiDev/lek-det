import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

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
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.25,
            width: size.width,
            decoration: BoxDecoration(color: kPrimaryColor, boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 40,
                color: kPrimaryColor.withOpacity(0.2),
              )
            ]),
          ),
          // Positioned(
          //   bottom: 0,
          //   left: 0,
          //   right: 0,
          //   child: Container(
          //     height: size.height * 0.08,
          //     width: size.width,
          //     decoration: BoxDecoration(color: kPrimaryColor, boxShadow: [
          //       BoxShadow(
          //         offset: Offset(0, -10),
          //         blurRadius: 60,
          //         color: kPrimaryColor.withOpacity(0.4),
          //       )
          //     ]),
          //   ),
          // ),
          child,
        ],
      ),
    );
  }
}
