import 'package:flutter/material.dart';
import 'package:lek_det/pages/Lek_laos/components/body.dart';
import 'package:lek_det/pages/Lek_laos/components/build_appbar.dart';

import '../../components/background.dart';

class LekLaos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context),
        body: Body()
    );
  }
}

