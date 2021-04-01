import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/background.dart';
import 'components/body.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
    );
  }
}

