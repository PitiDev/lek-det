import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/lek_laos_screen.dart';
import 'package:lek_det/pages/Lek_thai/lek_thai_screen.dart';
import 'package:lek_det/pages/Lek_vietnam/lek_vietnam_screen.dart';
import 'pages/main_screen/main_screen.dart';

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
        home: MainScreen(),
        routes: {
          '/lek-lao': (ctx) => LekLaos(),
          '/lek-thai': (ctx) => LekThai(),
          '/lek-vietnam': (ctx) => LekVietnam(),
        }
    );
  }
}
