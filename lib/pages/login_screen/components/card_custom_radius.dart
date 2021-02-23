import 'package:flutter/material.dart';

class CardCustomRadius extends StatelessWidget {
  final Widget child;
  const CardCustomRadius({
    Key key, this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Column(
        children: [
          Container(
            height: size.height * 0.5,
            width: size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  )
              ),
              child: child,
            ),
          )
        ],
      ),
    );
  }
}
