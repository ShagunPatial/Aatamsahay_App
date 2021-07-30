import 'package:atamsahay/screens/profile.dart';
import 'package:flutter/gestures.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import './screens/profile.dart';
import './screens/history.dart';

class MainDrawer extends StatefulWidget {
  User current_user;
  MainDrawer({Key key, @required current_user}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    User user = widget.current_user;
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
        CustomListTile(Icons.person, 'Profile', profile(curr_us: user)),
        CustomListTile(Icons.history, 'History', history()),
        SizedBox(height: 20),
        RaisedButton(
            padding: EdgeInsets.only(left: 50, right: 50),
            onPressed: signOut,
            child: Text(
              'Sign out',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.teal),
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
