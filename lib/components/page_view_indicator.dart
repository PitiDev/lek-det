import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class PageViewIndicator extends StatelessWidget {
  const PageViewIndicator({
    Key key,
    @required this.size,
    @required this.dates,
    @required this.pageChange,
  }) : super(key: key);

  final Size size;
  final List<String> dates;
  final int pageChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.3,
      height: size.height * 0.05,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dates.length,
        itemBuilder: (context, item) => Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: item != pageChange ? Colors.white : kPrimaryColor,
              border: Border.all(
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 10,
                    color: Colors.orangeAccent.withOpacity(0.8)
                )
              ]
          ),
          // child: Text("item: $item"),
        ),
      ),
    );
  }
}
