import 'package:atamsahay/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:atamsahay/select_symptomps.dart';
import './main_drawer.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'screens/Start.dart';
import 'screens/Login.dart';
import 'screens/SignUp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Aatmsahay",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => Login(),
        "SignUp": (BuildContext context) => SignUp(),
        "Start": (BuildContext context) => Start(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User user;
  bool isloggedin = false;

  checkAuthentification() async {
    _auth.authStateChanges().listen((user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed("Start");
      }
    });
  }

  Future getUser() async {
    User firebaseUser = _auth.currentUser;
    await firebaseUser?.reload();
    firebaseUser = _auth.currentUser;

    if (firebaseUser != null) {
      setState(() {
        this.user = firebaseUser;
        this.isloggedin = true;
      });
    }
  }

  signOut() async {
    _auth.signOut();

    final googleSignIn = GoogleSignIn();
    await googleSignIn.signOut();
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentification();
    this.getUser();
  }

  @override
  Widget build(BuildContext context) {
    String name = user.displayName == null ? "User" : user.displayName;
    return SafeArea(
        child: !isloggedin
            ? get_circular_indicator()
            : Scaffold(
                appBar: AppBar(
                  title: Text(
                    "Hi, ${user.displayName} ",
                    style: TextStyle(fontSize: 25),
                  ),
                  elevation: 10,
                  toolbarHeight: 150,
                  backgroundColor: Colors.teal[500],
                  shadowColor: Colors.teal[250],
                  actions: <Widget>[
                    IconButton(
                      iconSize: 100,
                      icon: Container(
                        child: CircleAvatar(
                          radius: 43,
                          backgroundImage:
                              AssetImage('images/profileimage.png'),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return profile(curr_us: user);
                        }));
                      },
                    )
                  ],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(200),
                        bottomRight: Radius.circular(700)),
                  ),
                ),
                drawer: MainDrawer(current_user: user),
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
                                height: 240,
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        40, 25, 50, 20),
                                                child: Text('Tip of the day',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 10, 40, 10),
                                            child: Text(
                                              "\"To keep the body in good health is a duty...otherwise we shall not able to keep our mind strong and clear\" \n                 ~ BUDDHA",
                                              style: GoogleFonts.dancingScript(
                                                  fontSize: 20,
                                                  color: Colors.teal,
                                                  fontWeight: FontWeight.bold),
                                            )),
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
                              height: 100,
                            ),
                            Container(
                                height: 200,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: <Color>[
                                        Colors.grey[300],
                                        Colors.white
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
                                              offset: Offset(2, 2),
                                              color: Colors.black,
                                              blurRadius: 5),
                                          Shadow(
                                              offset: Offset(-2, -2),
                                              color:
                                                  Colors.white.withOpacity(0.0),
                                              blurRadius: 5)
                                        ],
                                        color: Colors.teal),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          90, 0, 90, 0),
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.teal, // background
                                            onPrimary:
                                                Colors.white, // foreground
                                          ),
                                          onPressed: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
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

Widget get_circular_indicator() {
  return Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
        ],
      ),
    ),
  );
}
