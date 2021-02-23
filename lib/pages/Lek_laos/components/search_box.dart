import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
          color: Color(0xFFF9F8FD),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2), blurRadius: 4, color: Colors.black45)
          ]),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: "21 ກຸມພາ 2021",
            hintStyle: TextStyle(
                fontFamily: "NotoSansLao",
                fontSize: 20,
                fontWeight: FontWeight.w500),
            border: InputBorder.none,
            suffixIcon: Icon(Icons.calendar_today_outlined)),
      ),
    );
  }
}
