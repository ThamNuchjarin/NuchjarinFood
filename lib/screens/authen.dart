import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget showSignUp() {
    return RaisedButton(
      child: Text('Sign Up'),
      onPressed: () {},
    );
  }

  Widget showSignIn() {
    return RaisedButton(
      child: Text('Sign In'),
      onPressed: () {},
    );
  }

  Widget showUser() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'User :', hintText: 'Your user'),
    );
  }

  Widget showPassword() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password :', hintText: 'More 6 parameters'),
    );
  }

  Widget showTitle() {
    return Text(
      'Nuchjarin Food',
      style: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.pink[300]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.pink], begin: Alignment(-1, -1))),
      padding: EdgeInsets.only(top: 70.0),
      alignment: Alignment(0, -1),
      child: Column(
        children: <Widget>[
          showLogo(),
          Container(
            margin: EdgeInsets.only(top: 50.0),
            child: showTitle(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: showUser(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: showPassword(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: showSignIn(),
                ),
                Expanded(
                  child: showSignUp(),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
