import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.teal[200],
              Colors.black,
            ],
          )),
          width: double.infinity,
          //color: Colors.teal,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/profileimage.png'),
                ),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      " User ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          letterSpacing: 4,
                          fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                    height: 50,
                    width: 150,
                    child: Divider(
                      thickness: 5,
                      color: Colors.amberAccent,
                    )),
                Card(
                  elevation: 20,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "abcs@gmail.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  elevation: 20,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "999xxxxxxx9",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Card(
                  elevation: 20,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.timelapse,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "30",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text('Age'),
                  ),
                )
              ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: Text(
            'Edit',
            style: TextStyle(
              color: Colors.teal,
            ),
          ),
          icon: Icon(Icons.edit, color: Colors.teal),
          backgroundColor: Colors.white),
    );
  }
}
