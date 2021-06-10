import 'package:atamsahay/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:atamsahay/select_symptomps.dart';
import './main_drawer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import './screens/loginpage.dart';

void main() {
  runApp(MaterialApp(
    title: "Aatmsahay",
    theme: ThemeData.dark(),
    home: MyApp(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Hi,  User ",
          style: TextStyle(fontSize: 25),
        ),
        elevation: 20,
        toolbarHeight: 170,
        backgroundColor: Colors.teal[300],
        shadowColor: Colors.teal[250],
        actions: <Widget>[
          IconButton(
            iconSize: 100,
            icon: Container(
              child: CircleAvatar(
                radius: 43,
                backgroundImage: AssetImage('images/profileimage.png'),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return profile();
              }));
            },
          )
        ],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Container(
            color: Colors.white,
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      decoration: new BoxDecoration(
                          //  shape: BoxShape.circle,
                          ),
                      height: 200,
                      width: 300,
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(20)),
                            depth: 100,
                            lightSource: LightSource.topRight,
                            color: Colors.white),
                        child: Material(
                          //borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          // color: Colors.amber,
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          40, 17, 50, 30),
                                      child: Text('Tip of the day',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Colors.teal))),
                                  Icon(
                                    Icons.lightbulb_outlined,
                                    size: 40,
                                    color: Colors.teal[700],
                                  )
                                ],
                              ),
                              SizedBox(
                                  height: 10,
                                  width: 200,
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                  child: Text(
                                      "\"xxxx xxxx xxxxx x xxx\n xxxxxxxxxx xxxx\n xxxxxxxxx \" \n           ~ xxxxx ,xxxxx",
                                      style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.teal[300])))
                            ],
                          ),
                        ),
                      )),
                  /*  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 30, 40),
                    child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: <Color>[
                          Colors.lightGreenAccent,
                          Colors.teal
                        ])),
                        child: Material(
                          color: Colors.red,
                        )))**/
                  //ListTile(tileColor: Colors.pinkAccent)

                  /*  VxBox()
                    .square(300)
                    .teal400
                    .roundedLg
                    .neumorphic(curve: VxCurve.convex)
                    .makeCentered(), */
                  SizedBox(
                    height: 90,
                  ),
                  Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(colors: <Color>[
                          Colors.teal[200],
                          Colors.teal[700]
                        ]),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(10, 10),
                              color: Colors.black38,
                              blurRadius: 20),
                          BoxShadow(
                              offset: Offset(-10, -10),
                              color: Colors.white.withOpacity(0.85),
                              blurRadius: 20)
                        ],
                      ),
                      child: Column(children: <Widget>[
                        Text(
                          'Predict Disease',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 60,
                              shadows: [
                                Shadow(
                                    offset: Offset(3, 3),
                                    color: Colors.black,
                                    blurRadius: 10),
                                Shadow(
                                    offset: Offset(-3, -3),
                                    color: Colors.white.withOpacity(0.0),
                                    blurRadius: 10)
                              ],
                              color: Colors.grey.shade300),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(90, 0, 90, 0),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // background
                                  onPrimary: Colors.teal, // foreground
                                ),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return select_symptomps();
                                  }));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Row(children: <Widget>[
                                    Icon(Icons.arrow_right),
                                    Text(
                                      "Proceed",
                                      textAlign: TextAlign.center,
                                    )
                                  ]),
                                )))
                      ])),

                  SizedBox(
                    height: 50,
                  ),
                  // Container(
                  //   height: 200,
                  //   width: 300,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(16),
                  //       color: Colors.grey.shade300,
                  //       boxShadow: [
                  //         BoxShadow(
                  //             offset: Offset(10, 10),
                  //             color: Colors.black38,
                  //             blurRadius: 20)
                  //       ]),
                  //   child: Padding(
                  //       padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                  //       child: Text(
                  //         "Under Development",
                  //         textAlign: TextAlign.center,
                  //       )),
                  // ),
                ])),
      ),
      /*   floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return select_symptomps();
          }));
        },
        label: Text('Predict Disease'),
        icon: Icon(Icons.search),
        backgroundColor: Colors.teal,
      ), */
    ));
  }
}
