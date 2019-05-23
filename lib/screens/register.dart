import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formkey = GlobalKey<FormState>();
  String name, user, password;

  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You click register');
        if (formkey.currentState.validate()) {
          formkey.currentState.save();
          print('name = $name, user = $user, password = $password');
          // uploadValueToServer();
        }
      },
    );
  }

  void uploadValueToServer() async {
    String urlPHP = 'https://www.androidthai.in.th/tid/addUserUng.php?isAdd=true&Name=$name&User=$user&Password=$password';

    var response = await get(urlPHP);
    var resultString = json.decode(response.body);
    print('resultString ==> $resultString');



  }

  Widget nameTextFromField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Name :', hintText: 'Type your name'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Please fill Name !!';
        }
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget userTextFromField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'User :', hintText: 'Type your username'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Please fill User';
        }
      },
      onSaved: (String value) {
        user = value;
      },
    );
  }

  Widget passwordTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password :', hintText: 'Type your password'),
      validator: (String value) {
        if (value.length <= 5) {
          return 'Please fill Password more than 6 character';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        actions: <Widget>[registerButton()],
      ),
      //body: Text('This is body'),
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              nameTextFromField(),
              userTextFromField(),
              passwordTextFromField()
            ],
          ),
        ),
      ),
    );
  }
}
