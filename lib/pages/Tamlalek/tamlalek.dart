import 'package:flutter/material.dart';
import 'package:lek_det/pages/Tamlalek/Componants/informationlek.dart';
import 'package:lek_det/pages/Tamlalek/Componants/my_card.dart';
import 'package:lek_det/pages/Tamlalek/Componants/my_search.dart';

class Tamlalek extends StatefulWidget {
  @override
  _TamlalekState createState() => _TamlalekState();
}

class _TamlalekState extends State<Tamlalek> {
  final List<Informationlek> data = [
    Informationlek(image: "assets/images/jonh.jpg", name: "cat", num1: "4", num2: "33", num3: "5"),
    Informationlek(image: "assets/images/jonh.jpg", name: "cat", num1: "4", num2: "33", num3: "5"),
    Informationlek(image: "assets/images/jonh.jpg", name: "cat", num1: "4", num2: "33", num3: "5"),
    Informationlek(image: "assets/images/jonh.jpg", name: "cat", num1: "4", num2: "33", num3: "5"),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              My_search(),
              Container(
                width: double.infinity,
                height: 600,
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return My_card(
                      image: data[index].image,
                      name: data[index].name,
                      num1: data[index].num1,
                      num2: data[index].num2,
                      num3: data[index].num3,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
