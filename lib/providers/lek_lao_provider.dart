import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LekLaosProvider with ChangeNotifier {
  List<Map<String, dynamic>> lekLaoInfo;

  List<Map<String, dynamic>> getLekLaoInfo(){
    this._getLekLaoInfo();
    return lekLaoInfo;
  }

  Future<void> _getLekLaoInfo() async {
    String url = "https://retechsole.com/lekdet_api/public/api/lek-lao";
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      // print(jsonResponse.runtimeType);
      // print(jsonResponse);
      lekLaoInfo = [
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
      notifyListeners();
      print(lekLaoInfo);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }


}
