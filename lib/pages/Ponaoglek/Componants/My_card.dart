import 'package:flutter/material.dart';

class my_card extends StatelessWidget {
  // final String image,name;
  // my_card({@required this.image, this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MaterialButton(
        onPressed: () {},
        child: Container(
          alignment: Alignment.center,
          height: 184,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  blurRadius: 0.2,
                  color: Colors.grey,
                ),
                BoxShadow(
                  offset: Offset(-1, 2),
                  blurRadius: 0.3,
                  color: Colors.grey,
                )
              ]),
          child: Column(
            children: [
              Container(
                height: 10,
                  child: Image(image: AssetImage("assets/images/dog.png"))),
              SizedBox(height: 10),
              Text(
                "name",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
