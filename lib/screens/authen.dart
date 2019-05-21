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
      margin: EdgeInsets.only(top: 70.0),
      alignment: Alignment(0, -1),
      child: Column(
        children: <Widget>[
          showLogo(),
          Container(margin: EdgeInsets.only(top: 50.0), child: showTitle())
        ],
      ),
    ));
  }
  
}
