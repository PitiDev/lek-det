// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// class Network {
//   final String _url = 'https://retechsole.com/lekdet_api/public/api/';
//   var token;
//   var lang;
//
//   _getToken() async {
//     SharedPreferences localStorage = await SharedPreferences.getInstance();
//     token = localStorage.getString('access_token');
//     //print('Token ============= +' + token);
//   }
//
//   getData(apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     await _getToken();
//     return http.get(fullUrl, headers: _setHeaderNormal());
//   }
//
//   posData(data, apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     await _getToken();
//     return http.post(fullUrl, body: jsonEncode(data), headers: _setHeaderNormal());
//   }
//
//   deleteData(apiUrl) async {
//     var fullUrl = _url + apiUrl;
//     await _getToken();
//     return http.delete(fullUrl, headers: _setHeaderNormal());
//   }
//
//   _setHeaderNormal() => {
//         'Content-type': 'application/json',
//         'Authorization': 'Bearer $token',
//       };
// }

// Ex for use class network

// List<dynamic> _data_leklao = [];
//
// void lekLao() async {
//   final response = await Network().getData('lek-thai');
//   final body = json.decode(response.body);
//   setState(() {
//     _data_leklao = body['response']['prizes'];
//   });
// }
