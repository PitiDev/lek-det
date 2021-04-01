import 'package:flutter/material.dart';
import 'user.dart';

class RadioWidgetDemo extends StatefulWidget {
  RadioWidgetDemo() : super();
  final String title = "Radio Widget Demo";

  @override
  RadioWidgetDemoState createState() => RadioWidgetDemoState();
}

class RadioWidgetDemoState extends State<RadioWidgetDemo> {
  //
  List<User> users;
  User selectedUser;
  int selectedRadio;
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
    users = User.getUsers();
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  setSelectedUser(User user) {
    setState(() {
      selectedUser = user;
    });
  }

  List<Widget> createRadioListUsers() {
    List<Widget> widgets = [];
    for (User user in users) {
      widgets.add(
        RadioListTile(
          value: user,
          groupValue: selectedUser,
          title: Text(user.firstName),
          subtitle: Text(user.lastName),
          onChanged: (currentUser) {
            print("Current User ${currentUser.firstName}");
            setSelectedUser(currentUser);
          },
          selected: selectedUser == user,
          activeColor: Colors.green,
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("USERS"),
          ),
          Column(
            children: createRadioListUsers(),
          ),
          Divider(
            height: 20,
            color: Colors.green,
          ),
          RadioListTile(
            value: 1,
            groupValue: selectedRadioTile,
            title: Text("Radio 1"),
            subtitle: Text("Radio 1 Subtitle"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedRadioTile(val);
            },
            activeColor: Colors.red,
            secondary: OutlineButton(
              child: Text("Say Hi"),
              onPressed: () {
                print("Say Hello");
              },
            ),
            selected: true,
          ),
          RadioListTile(
            value: 2,
            groupValue: selectedRadioTile,
            title: Text("Radio 2"),
            subtitle: Text("Radio 2 Subtitle"),
            onChanged: (val) {
              print("Radio Tile pressed $val");
              setSelectedRadioTile(val);
            },
            activeColor: Colors.red,
            secondary: OutlineButton(
              child: Text("Say Hi"),
              onPressed: () {
                print("Say Hello");
              },
            ),
            selected: false,
          ),
          Divider(
            height: 20,
            color: Colors.green,
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
                child: Radio(
                  value: 1,
                  groupValue: selectedRadio,
                  activeColor: Colors.blue,
                  onChanged: (val) {
                    print("Radio $val");
                    setSelectedRadio(val);
                  },
                ),
              ),
              Radio(
                value: 2,
                groupValue: selectedRadio,
                activeColor: Colors.blue,
                onChanged: (val) {
                  print("Radio $val");
                  setSelectedRadio(val);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
