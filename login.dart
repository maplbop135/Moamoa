import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'package:google_sign_in/google_sign_in.dart';
import 'dart:async';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
/*
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = new GoogleSignIn();

  Future<FirebaseUser> _signIn() async{
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    GoogleSignInAuthentication GSA = await googleSignInAccount.authentication;

    AuthCredential credential = GoogleAuthProvider.getCredential(
        idToken: GSA.idToken,
        accessToken: GSA.accessToken);

    FirebaseUser user = await _auth.signInWithCredential(credential);

    print("User Name: ${user.displayName}");
    return user;
  }

  void _signOut(){
    googleSignIn.signOut();
    print("User Signed Out");
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('Image/Logo.jpg'),
                SizedBox(height: 16.0),
                Text('냉장고 속 재료 Moa Moa'),
              ],
            ),
            SizedBox(height: 120.0),
            SizedBox(
              height: 70.0,
              child: RaisedButton(
                /*onPressed: ()=> _signIn()
                    .then((FirebaseUser user)=>print(user))
                    .catchError((e)=>print(e)),*/
                child: Text("Sign In"),
                color: Colors.red,
              ),
            ),
            SizedBox(height: 12.0),
            SizedBox(
              height: 70.0,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Anonymous"),
                color: Colors.black45,
              ),
            ),
            ButtonBar(
              children: <Widget>[
                RaisedButton(
                  child: Text('sign out'),
                  //onPressed: _signOut,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
