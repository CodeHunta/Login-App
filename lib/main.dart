import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_test/flutter_test.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, //Toggles the 'Debug' banner at the top right edge
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 30.0),
                new Container(
                  child: Image(
                    image: AssetImage('assets/codehunta.png'),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 30.0,
                    fontFamily: 'NotoSans-Bold.ttf',
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  width: 350,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius:
                            1.0, // has the effect of softening the shadow
                        spreadRadius:
                            1.0, // has the effect of extending the shadow
                        offset: Offset(
                          2.0, // horizontal, move right 10
                          1.0, // vertical, move down 10
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.purple[700],
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Icon(Icons.person, color: Colors.amber),
                            Icon(Icons.lock, color: Colors.amber),
                          ],
                        ),
                      ),
                      Container(
                        width: 280,
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 30.0, 20.0, 0.0),
                                  border: InputBorder.none,
                                  hintText: 'email'),
                            ),
                            SizedBox(
                              height: 20,
                              width: 300,
                              child: Divider(color: Colors.purple[700]),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(
                                      20.0, 30.0, 20.0, 0.0),
                                  border: InputBorder.none,
                                  hintText: 'password'),
                            ),
                            SizedBox(
                              height: 20,
                              width: 300,
                              child: Divider(color: Colors.purple[700]),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'FORGOT PASSWORD?',
                          style: TextStyle(
                            letterSpacing: 0.5,
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () => launch('mailto:stanleyumez@outlook.com?subject=Technical%20Support&body=I%20forgot%20my%20password!'),
                          backgroundColor: Colors.purple[700],
                          child: Icon(Icons.arrow_forward,
                              color: Colors.amber, size: 30),
                        )
                      ],
                    ),
                  ),
                ),
                Text('or login with...'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blue[600],
                        onPressed: () => launch('https://dev.start.ng'),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('HNG Board',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blue[600],
                        onPressed: () => launch('https://twitter.com/CodeHunta'),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text('Twitter',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Don\'t have an account? '),
                      Text('SIGN UP',
                          style: TextStyle(
                            color: Colors.amber[800],
                            fontSize: 17,
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}