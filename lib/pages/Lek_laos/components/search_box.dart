import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';

class SearchBox extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final String date;

  const SearchBox({
    Key key,
    this.onChanged, this.date,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {

  @override
  void initState(){
    super.initState();
    print(widget.date);
  }

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
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            hintText: "${widget.date}",
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
