// import 'package:atamsahay/main.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name, _email, _password;

  checkAuthentication() async {
    _auth.authStateChanges().listen((user) async {
      if (user != null) {
        Navigator.pushReplacementNamed(context, "/");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    this.checkAuthentication();
  }

  signUp() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        UserCredential user = await _auth.createUserWithEmailAndPassword(
            email: _email, password: _password);
        if (user != null) {
          // UserUpdateInfo updateuser = UserUpdateInfo();
          // updateuser.displayName = _name;
          //  user.updateProfile(updateuser);
          await _auth.currentUser.updateDisplayName(_name);
          // await Navigator.pushReplacementNamed(context,"/") ;

        }
      } catch (e) {
        showError(e.message);
        print(e);
      }
    }
  }

  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('ERROR'),
            content: Text(errormessage),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              child: Image(
                image: AssetImage("images/pot_im.png"),
                fit: BoxFit.contain,
              ),
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Name';
                          },
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person),
                          ),
                          onSaved: (input) => _name = input),
                    ),
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input.isEmpty) return 'Enter Email';
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.email)),
                          onSaved: (input) => _email = input),
                    ),
                    Container(
                      child: TextFormField(
                          validator: (input) {
                            if (input.length < 6)
                              return 'Provide Minimum 6 Character';
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          obscureText: true,
                          onSaved: (input) => _password = input),
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(70, 10, 70, 10),
                      onPressed: signUp,
                      child: Text('SignUp',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      color: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
// class Signup extends StatelessWidget {
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
//                     "Create your account",
//                     style: GoogleFonts.raleway(
//                         fontSize: 35,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 300),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(60),
//                             topRight: Radius.circular(60))),
//                     width: double.infinity,
//                     child: Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         children: [
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Center(
//                             child: Text(
//                               "Sign Up",
//                               style: GoogleFonts.mukta(
//                                   fontSize: 30, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xffedffee),
//                                 border: UnderlineInputBorder(
//                                     borderSide: BorderSide.none),
//                                 labelText: "Email",
//                                 labelStyle: GoogleFonts.mukta(
//                                     color: Color(0xff29d65a).withOpacity(0.7),
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 17)),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xffedffee),
//                                 border: UnderlineInputBorder(
//                                     borderSide: BorderSide.none),
//                                 labelText: "Password",
//                                 labelStyle: GoogleFonts.mukta(
//                                     color: Color(0xff29d65a).withOpacity(0.7),
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 17),
//                                 suffixIcon: Icon(
//                                   Icons.remove_red_eye,
//                                   color: Color(0xff29d65a).withOpacity(0.4),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           TextFormField(
//                             decoration: InputDecoration(
//                                 filled: true,
//                                 fillColor: Color(0xffedffee),
//                                 border: UnderlineInputBorder(
//                                     borderSide: BorderSide.none),
//                                 labelText: "Confirm Password",
//                                 labelStyle: GoogleFonts.mukta(
//                                     color: Color(0xff29d65a).withOpacity(0.7),
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 17)),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Center(
//                             child: FlatButton(
//                               onPressed: null,
//                               child: Material(
//                                 elevation: 10,
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: Container(
//                                   width: 180,
//                                   height: 50,
//                                   decoration: BoxDecoration(
//                                       gradient: LinearGradient(
//                                         colors: [
//                                           Color(0xff29d65a),
//                                           Color(0xff54d94a)
//                                         ],
//                                         begin: Alignment.topLeft,
//                                         end: Alignment.bottomRight,
//                                       ),
//                                       borderRadius: BorderRadius.circular(10)),
//                                   child: Center(
//                                     child: Text(
//                                       "Sign Up",
//                                       style: GoogleFonts.mukta(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 21),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: Divider(
//                                   height: 20,
//                                   thickness: 2,
//                                   indent: 30,
//                                   color: Colors.black38,
//                                 ),
//                               ),
//                               Text(
//                                 " Or sign in with ",
//                                 style: GoogleFonts.mukta(color: Colors.black),
//                               ),
//                               Expanded(
//                                 child: Divider(
//                                   height: 20,
//                                   thickness: 2,
//                                   endIndent: 30,
//                                   color: Colors.black38,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 25,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Material(
//                                 elevation: 10,
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(4.0),
//                                   child: Image.network(
//                                     'https://i.postimg.cc/6qMTfNpM/google-symbol.png',
//                                     height: 25,
//                                     width: 25,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Material(
//                                 elevation: 10,
//                                 borderRadius: BorderRadius.circular(10),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(4.0),
//                                   child: Image.network(
//                                     'https://i.postimg.cc/wT9GtYNS/twitter-4.png',
//                                     height: 25,
//                                     width: 25,
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Material(
//                                   elevation: 10,
//                                   borderRadius: BorderRadius.circular(10),
//                                   child: Padding(
//                                       padding: const EdgeInsets.all(4.0),
//                                       child: IconButton(
//                                           icon: const Icon(
//                                               Icons.smart_button_sharp),
//                                           onPressed: () {
//                                             Navigator.push(context,
//                                                 MaterialPageRoute(
//                                                     builder: (context) {
//                                               return HomePage();
//                                             }));
//                                           })))
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
