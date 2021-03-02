import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/lek_laos_screen.dart';
import 'package:lek_det/pages/Lek_laos/test.dart';
import 'package:lek_det/pages/Lek_laos/test2.dart';
import 'package:lek_det/pages/Lek_thai/lek_thai_screen.dart';
import 'package:lek_det/pages/login_screen/login_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Colors.cyan,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: LekThai(),
    );
  }
}
