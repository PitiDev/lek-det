import 'package:flutter/material.dart';
import 'package:lek_det/style/constants.dart';
import 'package:lek_det/components/showbottom_sheet.dart';

class SearchBox extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final Function pressCalendar, pressSearch;
  final String date;

  const SearchBox({
    Key key,
    this.onChanged,
    this.date,
    this.pressCalendar,
    this.pressSearch,
  }) : super(key: key);

  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  void initState() {
    super.initState();
    print(widget.date);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
          color: Color(0xFFF9F8FD),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2), blurRadius: 4, color: Colors.black45)
          ]),
      child: Row(
        children: [
          Container(
            width: 230,
            height: 50,
            // color: Colors.blue,
            child: TextFormField(
              onSaved: (String value) {},
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(right: 100),
                hintText: "${widget.date}",
                hintStyle: TextStyle(
                    fontFamily: "NotoSansLao",
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
                border: InputBorder.none,
              ),
            ),
          ),
          Spacer(),
          IconButton(icon: Icon(Icons.calendar_today_outlined), onPressed: widget.pressCalendar),
          IconButton(icon: Icon(Icons.search), onPressed: widget.pressSearch)
        ],
      ),
    );
  }
}
