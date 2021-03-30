import 'package:flutter/material.dart';
import 'package:lek_det/pages/main_screen/components/card_bottom.dart';
import 'package:lek_det/providers/lek_lao_provider.dart';
import 'package:lek_det/style/constants.dart';
import 'package:provider/provider.dart';
import 'card_left.dart';
import 'card_right.dart';
import 'frequently_card.dart';
import 'result.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  List<Map<String, dynamic>> _laoInFo;

  void initState(){
    super.initState();
    // _getLekLaoInfo();
    Provider.of<LekLaosProvider>(
      context,
      listen: false,
    ).getLekLaoInfo();
  }

  Future<void> _getLekLaoInfo() async {
    String url = "https://retechsole.com/lekdet_api/public/api/lek-lao";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print(jsonResponse.runtimeType);
      print(jsonResponse);
      _laoInFo = [
        {
          "date": jsonResponse["date"],
          "sixdigit": jsonResponse["sixdigit"],
          "fivedigit": jsonResponse["fiveDigit"],
          "fourdigit": jsonResponse["fourDigit"],
          "threedigit": jsonResponse["threeDigit"],
          "twodigit": jsonResponse["twoDigit"],
          "name": jsonResponse["name"],
        },
        {
          "id": jsonResponse["history"][0]["id"],
          "lucky_number": jsonResponse["history"][0]["lucky_number"],
          "name": jsonResponse["history"][0]["name"],
          "date_lottery": jsonResponse["history"][0]["date_lottery"],
          "create_date": jsonResponse["history"][0]["created_date"],
        },
        {
          "id": jsonResponse["history"][1]["id"],
          "lucky_number": jsonResponse["history"][1]["lucky_number"],
          "name": jsonResponse["history"][1]["name"],
          "date_lottery": jsonResponse["history"][1]["date_lottery"],
          "create_date": jsonResponse["history"][1]["created_date"],
        },
      ];
      print(_laoInFo);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Result(),
          Container(
            width: double.infinity,
            height: size.height * 0.15,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: FrequentlyCard(),
                ),
                Expanded(
                  child: FrequentlyCard(),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.2,
            padding: EdgeInsets.only(left: 30, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: CardLeft(),
                  flex: 12,
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: CardRight(),
                  flex: 10,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CardBottom(),
        ],
      ),
    );
  }
}
