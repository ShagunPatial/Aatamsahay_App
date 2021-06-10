import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:atamsahay/api_call/dis_pred.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity/connectivity.dart';
import 'dart:convert';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class processing extends StatefulWidget {
  //processing({Key key, @required this.symp}) : super(key: key);
  final String symp1, symp2, symp3, symp4, symp5;

  const processing(
      {Key key,
      @required this.symp1,
      @required this.symp2,
      this.symp3,
      this.symp4,
      this.symp5})
      : super(key: key);

  @override
  _processingState createState() => _processingState();
}

Future<DisPred> createDis(String symp1, String symp2, String symp3,
    String symp4, String symp5) async {
  var api_url = Uri.parse("https://aatmsahayflaskapi.herokuapp.com/");

  print("${symp1}");
  print("${symp2}");
  print("${symp3}");
  print("${symp4}");
  print("${symp5}");
  Map<String, dynamic> request_symp = {
    "symp1": symp1,
    "symp2": symp2,
    "symp3": symp3,
    "symp4": symp4,
    "symp5": symp5
  };
  var response = await http.post(
    api_url,
    body: jsonEncode(request_symp),
  );
  print(response.statusCode);
  if (response.statusCode == 200) {
    final String responseString = response.body;
    return disPredFromJson(responseString);
  } else {
    return null;
  }
}

Future<bool> isConnected() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}

class _processingState extends State<processing> {
  DisPred _dis = null;
  bool _load = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("Predicting on the basis of \nselected symptoms"),
              toolbarHeight: 100,
            ),
            body: Container(
                color: Colors.white,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _load == true
                        ? SpinKitWave(
                            color: Colors.teal,
                            size: 100,
                          )
                        : Text(
                            "${maxProb(_dis)}",
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
                    SizedBox(height: 50),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.teal),
                      onPressed: () async {
                        if (await isConnected() == false) {
                          return connection_err(context);
                        } else {
                          final DisPred dis = await createDis(
                              widget.symp1,
                              widget.symp2,
                              widget.symp3,
                              widget.symp4,
                              widget.symp5);
                          if (dis == null) {
                            return req_err(context);
                          }
                          setState(() {
                            _dis = dis;
                            _load = false;
                          });
                        }
                      },
                      child: Container(
                          height: 50,
                          width: 150,
                          child: Row(
                            children: <Widget>[
                              Text(
                                "    Show Results   ",
                                style: TextStyle(fontSize: 15),
                              ),
                              Icon(Icons.search_sharp)
                            ],
                          )),
                    ),
                    SizedBox(height: 50),
                    Container(
                        decoration: new BoxDecoration(
                            //  shape: BoxShape.circle,
                            ),
                        height: 250,
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
                                        child: Text('Caution',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                                color: Colors.teal))),
                                    Icon(
                                      Icons.warning,
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
                                    padding: const EdgeInsets.fromLTRB(
                                        40, 10, 40, 10),
                                    child: Text(
                                        "\"Results are shown in\nprediction are on the basis of data we have,\nDon't hesitate for concerning Doctors\"",
                                        style: TextStyle(
                                            fontSize: 21,
                                            color: Colors.teal[300])))
                              ],
                            ),
                          ),
                        )),
                  ],
                ))));
  }
}

void req_err(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Post request error"),
    content: Text(" Response of post request is NULL"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

void connection_err(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Internet issue"),
    content: Text("Make sure you connected to network/Internet"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

String maxProb(dise) {
  DisPred dis = dise;
  if (dis.modelKnn == dis.modelNb || dis.modelKnn == dis.modelRdf) {
    return dis.modelKnn;
  } else if (dis.modelNb == dis.modelRdf) {
    return dis.modelNb;
  } else
    return dis.modelRdf;
}
