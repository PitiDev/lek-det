import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;

  const BackGround({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          Container(
            height: size.height,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.orangeAccent),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.network(
                'https://i.pinimg.com/564x/14/c4/70/14c470ca5da7dc329fb1802237f422fc.jpg'),
          ),
          child,
        ],
      ),
    );
  }
}
