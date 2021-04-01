import 'package:flutter/material.dart';
import 'package:lek_det/pages/main_screen/components/result.dart';
import 'package:lek_det/style/constants.dart';

import 'components/body.dart';
import 'components/build_appbar.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: Body(),
    );
  }

}

