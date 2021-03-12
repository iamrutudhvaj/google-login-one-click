import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_click_sign_in/sign_in.dart';
import 'package:one_click_sign_in/user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(
                  size: 250,
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    signInWithGoogle().then(
                      (result) {
                        if (result != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => UserPage(),
                            ),
                          );
                        }
                      },
                    );
                  },
                  child: Container(
                    height: 55,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/800px-Google_%22G%22_Logo.svg.png",
                          width: 35,
                        ),
                        Text(
                          "Sign In with Google",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
