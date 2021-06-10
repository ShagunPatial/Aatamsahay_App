import 'package:atamsahay/screens/profile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './screens/profile.dart';
import './screens/history.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: <Color>[Colors.black, Colors.teal])),
            child: Container(
                child: Column(children: <Widget>[
              Material(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                elevation: 10,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.asset('images/profileimage.png',
                      width: 80, height: 80),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'User',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ]))),
        CustomListTile(Icons.person, 'Profile', profile()),
        CustomListTile(Icons.history, 'History', history()),
        CustomListTile(Icons.settings, 'Settings', profile()),
        CustomListTile(Icons.logout, 'Logout', history()),
      ],
    ));
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Widget ontap;

  CustomListTile(this.icon, this.text, this.ontap);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
            decoration: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey.shade400))),
            child: InkWell(
                splashColor: Colors.lightGreenAccent,
                onTap: () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ontap;
                      }))
                    },
                child: Container(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(children: <Widget>[
                          Icon(icon),
                          Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                              child: Text(
                                text,
                                style: TextStyle(fontSize: 16.0),
                              )),
                        ]),
                        Icon(Icons.arrow_right)
                      ],
                    )))));
  }
}
