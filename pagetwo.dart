import 'package:flutter/material.dart';

class Pagetwo extends StatefulWidget {
  @override
  _Pagetwo createState() => _Pagetwo();
}

class _Pagetwo extends State<Pagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INDHOLD - Page Two"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
        child: Text("Hello, I'm page two"),
      ),
    );
  }
}
