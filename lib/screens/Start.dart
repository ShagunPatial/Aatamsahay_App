// import 'package:atamsahay/main.dart';

// import 'package:atamsahay/provider/google_sign_in.dart';
// import 'package:atamsahay/services/auth.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'signup_login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'Login.dart';
import 'SignUp.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> googleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      if (googleAuth.idToken != null && googleAuth.accessToken != null) {
        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);

        final UserCredential user =
            await _auth.signInWithCredential(credential);

        await Navigator.pushReplacementNamed(context, "/");

        return user;
      } else {
        throw StateError('Missing Google Auth Token');
      }
    } else
      throw StateError('Sign in Aborted');
  }

  navigateToLogin() async {
    Navigator.pushReplacementNamed(context, "Login");
  }

  navigateToRegister() async {
    Navigator.pushReplacementNamed(context, "SignUp");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 70.0),
            Container(
              padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
              width: double.infinity,
              child: Image(
                image: AssetImage("images/app_front_im.png"),
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10),
            RichText(
                text: TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <TextSpan>[
                  TextSpan(
                      text: 'Aatmsahay',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal))
                ])),
            SizedBox(height: 10.0),
            Text('Caring your body for healthy life',
                style: GoogleFonts.dancingScript(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700)),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    onPressed: navigateToLogin,
                    child: Text(
                      'LOGIN',
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
                SizedBox(width: 20.0),
                RaisedButton(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    onPressed: navigateToRegister,
                    child: Text(
                      'REGISTER',
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
            ),
            SizedBox(height: 20.0),
            SignInButton(Buttons.Google,
                text: "Sign up with Google", onPressed: googleSignIn),
            Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                height: 210,
                width: double.infinity,
                child: Image(
                  image: AssetImage("images/icon_yog_f.png"),
                  fit: BoxFit.contain,
                )),
          ],
        ),
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: myHomePage(),
//     );
//   }
// }

// class myHomePage extends StatefulWidget {
//   const myHomePage({Key key}) : super(key: key);

//   @override
//   _myHomePageState createState() => _myHomePageState();
// }

// class _myHomePageState extends State<myHomePage> {
//   //final AuthService _auth = AuthService();
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           width: size.width,
//           height: size.height,
//           child: SingleChildScrollView(
//             child: Stack(
//               children: [
//                 Container(
//                   child: Image.asset('images/1964825.jpg'),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 100, left: 30),
//                   child: Text(
//                     "Hello.",
//                     style: GoogleFonts.raleway(
//                         fontSize: 50,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 160, left: 30),
//                   child: Text(
//                     "Welcome",
//                     style: GoogleFonts.raleway(
//                         fontSize: 35,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 400),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.teal,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(60),
//                             topRight: Radius.circular(60))),
//                     width: double.infinity,
//                     child: Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                         child: Column(
//                           children: <Widget>[
//                             Padding(
//                                 padding: EdgeInsets.only(top: 10, left: 20),
//                                 child: Text(
//                                   "Sign Up",
//                                   style: GoogleFonts.raleway(
//                                     fontSize: 35,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 )),
//                             SizedBox(
//                               height: 30,
//                             ),
//                             ElevatedButton.icon(
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.white,
//                                 onPrimary: Colors.black,
//                                 minimumSize: Size(double.infinity, 50),
//                               ),
//                               icon: FaIcon(Icons.email, color: Colors.grey),
//                               label: Text('  Sign Up with Email'),
//                               onPressed: () {
//                                 Navigator.push(context,
//                                     MaterialPageRoute(builder: (context) {
//                                   return Signup();
//                                 }));
//                               },
//                             ),
//                             SizedBox(
//                               height: 20,
//                             ),
//                             ChangeNotifierProvider(
//                                 create: (context) => GoogleSignInProvider(),
//                                 child: StreamBuilder(
//                                     stream: FirebaseAuth.instance
//                                         .authStateChanges(),
//                                     builder: (context, snapshot) {
//                                       final provider =
//                                           Provider.of<GoogleSignInProvider>(
//                                               context);

//                                       if (provider.isSigningIn) {
//                                         return buildloading();
//                                       } else if (snapshot.hasData) {
//                                         HomePage();
//                                       } else {
//                                         return ElevatedButton.icon(
//                                           style: ElevatedButton.styleFrom(
//                                             primary: Colors.white,
//                                             onPrimary: Colors.black,
//                                             minimumSize:
//                                                 Size(double.infinity, 50),
//                                           ),
//                                           icon: FaIcon(FontAwesomeIcons.google,
//                                               color: Colors.red),
//                                           label: Text('  Sign Up with Google'),
//                                           onPressed: () {
//                                             final provider = Provider.of<
//                                                     GoogleSignInProvider>(
//                                                 context,
//                                                 listen: false);
//                                             provider.login();
//                                           },
//                                         );
//                                       }
//                                     })),
//                             Padding(
//                                 padding: EdgeInsets.only(top: 10, left: 20),
//                                 child: Text(
//                                   "---- or, Login ----",
//                                   style: GoogleFonts.raleway(
//                                     fontSize: 25,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 )),
//                             SizedBox(height: 20),
//                             ElevatedButton.icon(
//                               style: ElevatedButton.styleFrom(
//                                 primary: Colors.white,
//                                 onPrimary: Colors.black,
//                                 minimumSize: Size(double.infinity, 50),
//                               ),
//                               icon: FaIcon(Icons.email, color: Colors.blue),
//                               label: Text('  Login in Anonymously '),
//                               onPressed: () async {
//                                 dynamic result = await _auth.signInAnon();
//                                 if (result == null) {
//                                   print("error in sign in");
//                                 } else {
//                                   Navigator.push(context,
//                                       MaterialPageRoute(builder: (context) {
//                                     return HomePage();
//                                   }));
//                                 }
//                               },
//                             ),
//                             SizedBox(height: 10),
//                             ElevatedButton.icon(
//                                 style: ElevatedButton.styleFrom(
//                                   primary: Colors.black,
//                                   onPrimary: Colors.white,
//                                   minimumSize: Size(10, 30),
//                                 ),
//                                 icon:
//                                     FaIcon(Icons.forward, color: Colors.white),
//                                 label: Text(' SKIP'),
//                                 onPressed: () {
//                                   Navigator.push(context,
//                                       MaterialPageRoute(builder: (context) {
//                                     return HomePage();
//                                   }));
//                                 })
//                           ],
//                         )),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildloading() => Stack(
//         fit: StackFit.expand,
//         children: [Center(child: CircularProgressIndicator())],
//       );
// }
