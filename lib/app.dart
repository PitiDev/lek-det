import 'package:flutter/material.dart';
import 'package:lek_det/page/Lek_laos/Lek_laos.dart';
import 'package:lek_det/page/Lek_laos/test.dart';

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
      home: LekLaos(),
    );
  }
}
