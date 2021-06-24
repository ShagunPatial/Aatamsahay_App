import 'package:atamsahay/main.dart';

import 'package:atamsahay/provider/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'signup_login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  child: Image.asset('images/1964825.jpg'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100, left: 30),
                  child: Text(
                    "Hello.",
                    style: GoogleFonts.raleway(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 160, left: 30),
                  child: Text(
                    "Welcome",
                    style: GoogleFonts.raleway(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 400),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(60),
                            topRight: Radius.circular(60))),
                    width: double.infinity,
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                        child: Column(
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(top: 10, left: 20),
                                child: Text(
                                  "Sign Up",
                                  style: GoogleFonts.raleway(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                minimumSize: Size(double.infinity, 50),
                              ),
                              icon: FaIcon(Icons.email, color: Colors.grey),
                              label: Text('  Sign Up with Email'),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Signup();
                                }));
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ChangeNotifierProvider(
                                create: (context) => GoogleSignInProvider(),
                                child: StreamBuilder(
                                    stream: FirebaseAuth.instance
                                        .authStateChanges(),
                                    builder: (context, snapshot) {
                                      final provider =
                                          Provider.of<GoogleSignInProvider>(
                                              context);

                                      if (provider.isSigningIn) {
                                        return buildloading();
                                      } else if (snapshot.hasData) {
                                        HomePage();
                                      } else {
                                        return ElevatedButton.icon(
                                          style: ElevatedButton.styleFrom(
                                            primary: Colors.white,
                                            onPrimary: Colors.black,
                                            minimumSize:
                                                Size(double.infinity, 50),
                                          ),
                                          icon: FaIcon(FontAwesomeIcons.google,
                                              color: Colors.red),
                                          label: Text('  Sign Up with Google'),
                                          onPressed: () {
                                            final provider = Provider.of<
                                                    GoogleSignInProvider>(
                                                context,
                                                listen: false);
                                            provider.login();
                                          },
                                        );
                                      }
                                    })),
                            Padding(
                                padding: EdgeInsets.only(top: 10, left: 20),
                                child: Text(
                                  "---- or, Login ----",
                                  style: GoogleFonts.raleway(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            SizedBox(height: 20),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                minimumSize: Size(double.infinity, 50),
                              ),
                              icon: FaIcon(Icons.email, color: Colors.blue),
                              label: Text('  Login with Email'),
                              onPressed: () {},
                            ),
                            SizedBox(height: 10),
                            ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  onPrimary: Colors.white,
                                  minimumSize: Size(10, 30),
                                ),
                                icon:
                                    FaIcon(Icons.forward, color: Colors.white),
                                label: Text(' SKIP'),
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }));
                                })
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildloading() => Stack(
        fit: StackFit.expand,
        children: [Center(child: CircularProgressIndicator())],
      );
}
