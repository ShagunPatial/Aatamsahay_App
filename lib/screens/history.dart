import 'package:flutter/material.dart';

class history extends StatefulWidget {
  history({Key key}) : super(key: key);

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("History"),
        ),
        body: SingleChildScrollView(
            child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.lightGreen[300],
                elevation: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Column(children: <Widget>[
                      Text(
                        " Selected Symptoms",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Symp1"),
                      Text("Symp2"),
                      Text("Symp3"),
                      Text("Symp4"),
                      Text("Symp5")
                    ])),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          " Predicted Disease",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" Disease #"),
                      ],
                    )),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          "time & date",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" HH:MM:SS"),
                        Text("dd/mm/yyyy")
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.lightGreen[300],
                elevation: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Column(children: <Widget>[
                      Text(
                        " Selected Symptoms",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Symp1"),
                      Text("Symp2"),
                      Text("Symp3"),
                      Text("Symp4"),
                      Text("Symp5")
                    ])),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          " Predicted Disease",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" Disease #"),
                      ],
                    )),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          "time & date",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" HH:MM:SS"),
                        Text("dd/mm/yyyy")
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.lightGreen[300],
                elevation: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Column(children: <Widget>[
                      Text(
                        " Selected Symptoms",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Symp1"),
                      Text("Symp2"),
                      Text("Symp3"),
                      Text("Symp4"),
                      Text("Symp5")
                    ])),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          " Predicted Disease",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" Disease #"),
                      ],
                    )),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          "time & date",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" HH:MM:SS"),
                        Text("dd/mm/yyyy")
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.lightGreen[300],
                elevation: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Column(children: <Widget>[
                      Text(
                        " Selected Symptoms",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Symp1"),
                      Text("Symp2"),
                      Text("Symp3"),
                      Text("Symp4"),
                      Text("Symp5")
                    ])),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          " Predicted Disease",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" Disease #"),
                      ],
                    )),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          "time & date",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" HH:MM:SS"),
                        Text("dd/mm/yyyy")
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                color: Colors.lightGreen[300],
                elevation: 50,
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Column(children: <Widget>[
                      Text(
                        " Selected Symptoms",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text("Symp1"),
                      Text("Symp2"),
                      Text("Symp3"),
                      Text("Symp4"),
                      Text("Symp5")
                    ])),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          " Predicted Disease",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" Disease #"),
                      ],
                    )),
                    Padding(padding: const EdgeInsets.fromLTRB(20, 0, 0, 0)),
                    Container(
                        child: Column(
                      children: <Widget>[
                        Text(
                          "time & date",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(" HH:MM:SS"),
                        Text("dd/mm/yyyy")
                      ],
                    ))
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
