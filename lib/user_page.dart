import 'package:flutter/material.dart';
import 'package:one_click_sign_in/main.dart';
import 'sign_in.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.white54,
            Colors.lightBlueAccent,
          ],
          begin: Alignment.topRight,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                imageUrl,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "NAME",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "EMAIL",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              email,
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 35,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                signOutGoogle();
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => Home()),
                    ModalRoute.withName('/'));
              },
              color: Colors.deepPurple,
              child: Text(
                "Sign Out",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
