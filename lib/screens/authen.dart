import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuchjarin_food/screens/register.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  final formkey = GlobalKey<FormState>();
  String user, password;

  Widget showLogo() {
    return Image.asset('images/logo.png');
  }

  Widget showSignUp(BuildContext context) {
    return RaisedButton(
      child: Text('Sign Up'),
      onPressed: () {
        if (formkey.currentState.validate()) {
          formkey.currentState.save();
        }
        print('You click Signup');

        // Creat Router
        var registerRouter =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(registerRouter);
      },
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
      validator: (String value) {
        if (value.length == 0) {
          return 'Tell user >';
        }
      },
      onSaved: (String value) {
        user = value;
      },
    );
  }

  Widget showPassword() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password :', hintText: 'More 6 parameters'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Password more than 6 characters';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget showTitle() {
    return Text(
      'Nuchjarin Food',
      style: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue[300]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: formkey,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.pink],
                    begin: Alignment(-1, -1))),
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
                        child: showSignUp(context),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
